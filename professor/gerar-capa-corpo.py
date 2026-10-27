"""Gera professor/capa-corpo.tex a partir de professor/capa.tex.

O Pandoc monta o proprio preambulo e descarta o do arquivo original, entao as
definicoes de cor da capa precisam ser replicadas no corpo injetado.
O graphicx vem por --include-in-header (professor/capa-pacotes.tex).
"""
import io
import re

SRC = "professor/capa.tex"
DEST = "professor/capa-corpo.tex"

t = io.open(SRC, encoding="utf-8").read()

cores = "\n".join(
    linha for linha in t.splitlines() if linha.strip().startswith(r"\definecolor")
)

corpo = re.search(r"\\begin\{document\}(.*)\\end\{document\}", t, re.S).group(1)
corpo = "\n".join(l for l in corpo.splitlines() if "hispagestyle" not in l)
corpo = corpo.replace(
    r"\pagecolor{fundo}",
    r"\newgeometry{margin=2.6cm,top=3.4cm,bottom=2.6cm}" + "\n" + r"\pagecolor{fundo}",
)

final = (
    "% gerado por professor/gerar-capa-corpo.py - nao editar a mao\n"
    + cores
    + "\n"
    + r"\thispagestyle{empty}"
    + "\n"
    + corpo.rstrip()
    + "\n"
    + r"\clearpage"
    + "\n"
    + r"\restoregeometry"
    + "\n"
    + r"\pagecolor{white}"
    + "\n"
    + r"\color{black}"
    + "\n"
)

io.open(DEST, "w", encoding="utf-8", newline="\n").write(final)
print(f"   capa-corpo.tex: {len(final)} chars, {cores.count('definecolor')} cores")
