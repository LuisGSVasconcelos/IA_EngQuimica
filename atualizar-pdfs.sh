#!/usr/bin/env bash
# atualizar-pdfs.sh — mantem slides/pdf/ em sincronia com slides/*.pptx
#
# Converte SOMENTE os decks cujo .pptx mudou depois do PDF correspondente
# (ou cujo PDF nao existe). Rode na raiz do repositorio.
#
#   ./atualizar-pdfs.sh            # converte so o que esta desatualizado
#   ./atualizar-pdfs.sh --todos    # forca a conversao das 27
#   ./atualizar-pdfs.sh --commit   # converte e faz commit das mudancas
#   ./atualizar-pdfs.sh --dry-run  # so lista o que faria
#
# Nao faz push: isso fica com voce (git push origin main).

set -uo pipefail

RAIZ="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SLIDES="$RAIZ/slides"
PDFDIR="$SLIDES/pdf"
PERFIL_LO="$RAIZ/.lo-profile"

TODOS=0
COMMIT=0
DRY=0
for arg in "$@"; do
    case "$arg" in
        --todos)  TODOS=1 ;;
        --commit) COMMIT=1 ;;
        --dry-run) DRY=1 ;;
        -h|--help) sed -n '2,14p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'; exit 0 ;;
        *) echo "argumento desconhecido: $arg (use --help)" >&2; exit 2 ;;
    esac
done

# ---- localiza o LibreOffice ----
SOFFICE=""
for cand in "/c/Program Files/LibreOffice/program/soffice.com" \
            "/c/Program Files (x86)/LibreOffice/program/soffice.com" \
            "/Applications/LibreOffice.app/Contents/MacOS/soffice"; do
    [ -x "$cand" ] && SOFFICE="$cand" && break
done
if [ -z "$SOFFICE" ]; then
    SOFFICE="$(command -v soffice 2>/dev/null || true)"
fi
if [ -z "$SOFFICE" ]; then
    echo "erro: LibreOffice nao encontrado." >&2
    echo "  instale com: winget install TheDocumentFoundation.LibreOffice" >&2
    exit 1
fi

if [ ! -d "$SLIDES" ]; then
    echo "erro: pasta slides/ nao encontrada em $RAIZ" >&2
    exit 1
fi
mkdir -p "$PDFDIR"

# ---- decide o que converter ----
mapfile -t DECKS < <(
    for pptx in "$SLIDES"/Aula_*.pptx; do
        [ -e "$pptx" ] || continue
        nome="$(basename "$pptx" .pptx)"
        pdf="$PDFDIR/$nome.pdf"
        if [ "$TODOS" -eq 1 ] || [ ! -f "$pdf" ] || [ "$pptx" -nt "$pdf" ]; then
            printf '%s\n' "$pptx"
        fi
    done
)

total_decks=$(ls -1 "$SLIDES"/Aula_*.pptx 2>/dev/null | wc -l | tr -d ' ')

if [ "${#DECKS[@]}" -eq 0 ]; then
    echo "nada a fazer: os $total_decks PDFs ja estao mais novos que os PPTX."
    exit 0
fi

echo "decks desatualizados: ${#DECKS[@]} de $total_decks"
for d in "${DECKS[@]}"; do
    motivo="alterado"
    [ -f "$PDFDIR/$(basename "$d" .pptx).pdf" ] || motivo="PDF ausente"
    echo "  - $(basename "$d")  [$motivo]"
done

if [ "$DRY" -eq 1 ]; then
    echo "(dry-run: nada foi convertido)"
    exit 0
fi

# ---- converte (perfil isolado: evita travar se o LibreOffice estiver aberto) ----
echo
echo "convertendo..."
CONVERTIDOS=0
FALHAS=0
for d in "${DECKS[@]}"; do
    win="$(cygpath -w "$d" 2>/dev/null || printf '%s' "$d")"
    saida="$("$SOFFICE" --headless --norestore \
        "-env:UserInstallation=file:///$(cygpath -m "$PERFIL_LO" 2>/dev/null || printf '%s' "$PERFIL_LO")" \
        --convert-to pdf --outdir "$(cygpath -w "$PDFDIR" 2>/dev/null || printf '%s' "$PDFDIR")" \
        "$win" 2>&1)"
    nome="$(basename "$d" .pptx)"
    if [ -f "$PDFDIR/$nome.pdf" ] && ! printf '%s' "$saida" | grep -qi "error"; then
        CONVERTIDOS=$((CONVERTIDOS + 1))
        printf '  ok   %s\n' "$nome.pdf"
    else
        FALHAS=$((FALHAS + 1))
        printf '  FALHOU %s\n     %s\n' "$nome" "$(printf '%s' "$saida" | tail -2)"
    fi
done

echo
echo "convertidos: $CONVERTIDOS | falhas: $FALHAS"
[ "$FALHAS" -gt 0 ] && exit 1

# ---- commit opcional ----
if [ "$COMMIT" -eq 1 ]; then
    cd "$RAIZ" || exit 1
    if [ -z "$(git status --porcelain -- slides 2>/dev/null)" ]; then
        echo "sem mudancas para commitar."
        exit 0
    fi
    git add slides
    git commit -q -m "chore: regenera PDFs de slides desatualizados

$(for d in "${DECKS[@]}"; do basename "$d" .pptx; done | sed 's/^/- /')"
    echo "commit criado. Para publicar: git push origin main"
fi
