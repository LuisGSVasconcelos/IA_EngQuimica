# Apresentações (.pptx)

27 decks, 265 slides no total — uma apresentação por aula. Os decks são o material de
condução da aula (âncoras, perguntas, diagramas e enunciados), não o conteúdo completo:
o conteúdo executável está nos notebooks e o detalhamento está nos planos de aula.

| Item | Situação |
|---|---|
| Aulas com deck | 01–07, 09, 11, 13–30 |
| Aulas **sem** deck | 08, 10 e 12 — são os três laboratórios, conduzidos direto no notebook |
| Média | 10 slides por aula (28–30 têm 7–8, por serem de encerramento) |
| Imagens embutidas | apenas `Aula_02` (2 capturas de tela); os demais são texto e vetor |
| Peso | 1,2 MB em `.pptx` · 9,8 MB em `.pdf` (as fontes vão embutidas) |

## Duas versões

| Formato | Onde | Para quê |
|---|---|---|
| `.pptx` | `slides/` | **fonte editável** — abrir no PowerPoint, Google Slides ou LibreOffice e adaptar |
| `.pdf` | `slides/pdf/` | **projetar e distribuir** — abre em qualquer máquina sem Office, layout congelado |

Os 27 PDFs têm 265 páginas no total, idênticas aos 265 slides, com as fontes Calibri
embutidas em subconjunto. Gerados com LibreOffice 26.8 em modo headless:

```bash
soffice --headless --convert-to pdf --outdir pdf slides/Aula_*.pptx
```

Ao editar um `.pptx`, regenere o PDF correspondente — os dois precisam ficar em sincronia.
Se a diferença de peso incomodar, o PDF comprime bem mais com Ghostscript
(`gs -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook`), ao custo de nitidez nos diagramas.

## Como editar

- **PowerPoint**, **Google Slides** ou **LibreOffice Impress** abrem os arquivos sem conversão.
- O texto é editável normalmente; os diagramas são formas vetoriais nativas (não são imagens),
  então dá para mudar rótulo, cor e posição.
- Ao adaptar para outra instituição, mantenha a atribuição (ver licença abaixo).

## Licença

Os slides são **conteúdo didático** e estão sob **CC BY-NC-SA 4.0** — o mesmo regime dos
planos de aula, rubricas e diagramas. Texto legal completo em
[`../LICENSE-CONTEUDO.md`](../LICENSE-CONTEUDO.md).

Resumindo: pode usar em aula, adaptar e redistribuir, desde que **cite o autor**, **não
venda** e **publique sua adaptação sob a mesma licença**.

> Não confundir com os notebooks: o código em [`../notebooks/`](../notebooks/) é **MIT** e os
> dados em [`../dados/`](../dados/) são **CC BY 4.0**. Ver [`../LICENSE`](../LICENSE).

## Espelho

Os mesmos arquivos existem numa pasta pública do Google Drive, para quem quiser copiar
para o próprio Drive e editar de lá sem clonar o repositório:

<https://drive.google.com/drive/folders/1FwQLBFaXFwVwjkzB9T5ZcbCtlg80FTE8>

O repositório é a fonte oficial — a pasta do Drive é conveniência e pode não estar atualizada.
