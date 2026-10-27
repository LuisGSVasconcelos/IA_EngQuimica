# Guia do Professor

Material de apoio para quem vai **ministrar** a disciplina *IA Aplicada à Engenharia Química*
usando este repositório — do projeto do curso à condução da última aula.

O guia é escrito para ser lido fora de ordem, conforme a necessidade:

| Documento | Para quê | Quando ler |
|---|---|---|
| [`ementa.md`](ementa.md) | Projeto pedagógico: justificativa, competências, progressão Bloom, avaliação, bibliografia | Antes de propor a disciplina ao departamento |
| [`cronograma.md`](cronograma.md) | Uma página por aula: objetivo, sequência, materiais, dados, slides e tarefa | Ao preparar cada aula |
| [`rubricas.md`](rubricas.md) | Correção: escala de quatro níveis, rubrica por laboratório e do projeto, política de uso de IA | Antes da primeira entrega |
| [`armadilhas.md`](armadilhas.md) | O que quebra e o que fazer — inclui as falhas já encontradas neste material | Antes do primeiro dia |

**Versão em PDF:** [`guia-do-professor.pdf`](guia-do-professor.pdf) — os quatro documentos
consolidados, com sumário e capa própria. Gerado a partir dos `.md`, que são a fonte.

**Card para divulgação:** [`capa-linkedin.png`](capa-linkedin.png) — a mesma capa em formato
quadrado 1199×1199, para post em rede social.

### Remontar o guia

```bash
./professor/gerar-guia.sh            # PDF + card do LinkedIn
./professor/gerar-guia.sh --so-pdf   # só o PDF
```

Requer `pandoc`, `xelatex` (MiKTeX) e `pymupdf`. Os arquivos de arte:

| Arquivo | Função |
|---|---|
| `capa.tex` | capa completa, documento independente (para iterar o design sozinho) |
| `capa-corpo.tex` | a mesma capa sem preâmbulo — é esta que o Pandoc injeta |
| `capa-linkedin.tex` | versão quadrada 1:1 |
| `capa-linkedin.png` | saída em imagem, pronta para postar |

> A capa usa `\definecolor` próprio, que vive no preâmbulo de `capa.tex`. O `capa-corpo.tex`
> repete as definições porque o Pandoc gera o próprio preâmbulo e descarta o do arquivo original.
> `capa-pacotes.tex` injeta o `graphicx`, que o template do Pandoc não carrega.

### Sobre a marca da UFCG

`assets/ufcg-logo.png` é o logotipo oficial da Universidade Federal de Campina Grande, obtido em
<https://ccbs.ufcg.edu.br/index.php/logomarcas>. A imagem é usada **sem alteração** — as cores da
marca (roxo e ciano) não foram modificadas; para funcionar sobre o fundo escuro da capa, o logo é
apresentado dentro de um retângulo branco de respiro.

Se a universidade disponibilizar a **versão negativa/monocromática** da marca (arquivo próprio para
fundo escuro), ela substitui o chip branco sem nenhum outro ajuste de layout — basta trocar o arquivo
e remover o `\colorbox{branco}{...}` do `capa.tex`.

---

## O que este guia não é

Não é o material do aluno. O aluno precisa de: notebooks ([`../notebooks/`](../notebooks/)),
dados ([`../dados/`](../dados/)) e slides ([`../slides/`](../slides/)). O guia é a camada que
existe para o professor — inclusive os capítulos que descrevem o que costuma dar errado.

Não substitui leitura crítica. Nenhum documento decide por você se a aula funcionou.

---

## Três decisões de desenho, para você respeitar ou mudar conscientemente

1. **Um processo, muitas tarefas.** Aulas 04, 05, 07, 08 e 09 usam o mesmo dataset de coluna
   de destilação. Trocar de dataset a cada aula ensina ferramenta; repetir o processo ensina método.
2. **Aula de 100 min com anatomia fixa** (10/25/40/15/10). A previsibilidade libera carga
   cognitiva para o conteúdo.
3. **Nota por decisão, não por acerto.** Validação correta com métrica mediana vale mais que
   métrica boa com vazamento de dados.

Se você mudar uma delas, mude a rubrica junto — senão a avaliação passa a punir o que a aula ensina.

---

## Como citar este guia

VASCONCELOS, L. G. S. **IA Aplicada à Engenharia Química: datasets sintéticos e notebooks**.
Campina Grande: UFCG/UAEQ, 2026. DOI: 10.5281/zenodo.23649424.

O guia está sob **CC BY-NC-SA 4.0** — pode adaptar para sua instituição, desde que cite, não
venda e publique a adaptação sob a mesma licença. Ver [`../LICENSE-CONTEUDO.md`](../LICENSE-CONTEUDO.md).
