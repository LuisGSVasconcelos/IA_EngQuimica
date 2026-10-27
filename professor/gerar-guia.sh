#!/usr/bin/env bash
# gerar-guia.sh — remonta o Guia do Professor (PDF) e o card do LinkedIn
#
#   ./professor/gerar-guia.sh            # PDF + card PNG
#   ./professor/gerar-guia.sh --so-pdf   # so o PDF
#
# Requisitos: pandoc + xelatex (MiKTeX) + python com pymupdf (para o PNG).
# A capa vive em professor/capa.tex (arquivo independente, para iterar sozinho);
# professor/capa-corpo.tex e a versao sem preambulo que o Pandoc injeta.

set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."

SO_PDF=0
[ "${1:-}" = "--so-pdf" ] && SO_PDF=1

echo "== PDF =="
# corpo da capa gerado a partir de capa.tex
python professor/gerar-capa-corpo.py

pandoc professor/ementa.md professor/cronograma.md professor/rubricas.md professor/armadilhas.md \
  -o professor/guia-do-professor.pdf \
  --toc --toc-depth=2 --pdf-engine=xelatex \
  --include-in-header=professor/capa-pacotes.tex \
  --include-before-body=professor/capa-corpo.tex \
  -V documentclass=report -V geometry:margin=2.4cm -V fontsize=11pt \
  -V mainfont="Calibri" -V colorlinks=true -V toc-title="Sumário"
echo "   ok: professor/guia-do-professor.pdf"

if [ "$SO_PDF" -eq 0 ]; then
  echo "== card do LinkedIn =="
  # xelatex e nativo do Windows: caminhos MSYS (/c/...) nao servem, use cygpath
  WIN="$(cygpath -w "$PWD/professor" 2>/dev/null || printf '%s' "$PWD/professor")"
  ( cd professor && xelatex -interaction=nonstopmode -halt-on-error \
      -output-directory="$WIN" capa-linkedin.tex >/dev/null )
  if command -v uv >/dev/null 2>&1; then
    PY=(uv run --quiet --with pymupdf python)
  else
    PY=(python)
  fi
  "${PY[@]}" - <<'PY'
import fitz
fitz.open("professor/capa-linkedin.pdf")[0].get_pixmap(dpi=145).save("professor/capa-linkedin.png")
print("   ok: professor/capa-linkedin.png (1199x1199)")
PY
  rm -f professor/capa-linkedin.pdf professor/capa-linkedin.aux \
        professor/capa-linkedin.log professor/capa-linkedin.out
fi
