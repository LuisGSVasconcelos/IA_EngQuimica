# Armadilhas

Este é o capítulo que não existe na literatura. Monografias de machine learning em engenharia
química não contam o que dá errado em sala; material de didática não sabe o que é um PIMS.
O que segue vem de duas fontes, e a distinção importa:

| Marca | Significado |
|---|---|
| **[verificado]** | Fato observado no material deste repositório, com evidência rastreável |
| **[risco]** | Modo de falha previsível no desenho do curso — mitigação recomendada, sem alegar que já ocorreu |

---

## 1. Armadilhas verificadas no próprio material

### 1.1 O Colab esconde dependências que o ambiente local cobra

**[verificado]** A aula 05 quebrava com `ImportError: Import tabulate failed`, na chamada
`df.to_markdown()`. No Colab funcionava, porque `tabulate` já vem instalado na imagem.
Num ambiente limpo — o de qualquer professor que clone o repositório — quebrava na nona célula.

**Por que isso importa mais do que parece:** o erro não aparece para você, aparece para quem
adota o material. É a diferença entre "funciona" e "funciona na minha máquina".

**O que fazer:** antes de publicar qualquer notebook, rode em ambiente limpo. Aqui:
`pip install -r requirements.txt` e execute todos. O repositório documenta o resultado:
26 notebooks, 517 células, 9,7 min, mediana de 9,7 s por notebook.

### 1.2 Dependência de URL crua do GitHub

**[verificado]** Os notebooks carregam dados por `raw.githubusercontent.com/...` — 18 URLs
distintas. Não há cópia local: se o repositório mudar de nome, for tornado privado, ou a
branch `main` for renomeada, **toda a turma perde os dados na mesma aula**.

**O que fazer:** antes de cada semestre, abra um notebook qualquer e rode a primeira célula.
Custa 20 segundos. Se for lecionar offline, clone o repositório e troque `BASE` por caminho local.

### 1.3 O gabarito é público

**[verificado]** Os três laboratórios existem em duas versões no repositório público:
`LabN_*_Template.ipynb` (lacunas) e `LabN_*_Gabarito.ipynb` (resolvido). A busca do GitHub
encontra os dois.

**Consequência:** se a nota do laboratório for só "o notebook executa e o RMSE bate", parte da
turma entrega o gabarito. Você vai corrigir uma cópia.

**O que fazer — três opções, em ordem de preferência:**

1. **Avalie por arguição**, não por arquivo: 5 min por dupla, com o notebook aberto, pedindo
   "por que essa métrica?" e "o que acontece se eu dobrar a vazão?". O gabarito não responde.
2. **Troque o alvo**: mantenha o template e mude a semente do dataset ou a variável-alvo
   (composição do topo → do fundo). O gabarito deixa de servir e o lab continua o mesmo.
3. **Use o gabarito como material de estudo** e avalie em sala, sem entrega domiciliar.

### 1.4 Slides uniformes não são slides rasos — mas exigem o notebook ao lado

**[verificado]** São 27 decks com 265 slides: 10 por aula, quase todos sem imagem (só a Aula 02
tem duas capturas de tela). Lidos isoladamente, parecem finos.

**O que isso significa na prática:** o slide é **âncora de condução** — pergunta-desafio,
diagrama, enunciado do exercício. O conteúdo executável está no notebook. Professor que tentar
dar a aula só pelos slides vai passar 40 minutos explicando o que os alunos deveriam estar fazendo.

**O que fazer:** trate o deck como roteiro de fala e o notebook como o material. Se quiser slides
mais densos para outro público (extensão, pós-graduação), o material dos planos de aula é a fonte.

### 1.5 Placeholder de autor no rodapé

**[verificado]** 26 dos 27 decks tinham `Prof. [Seu Nome]` no rodapé; só a Aula 01 estava
personalizada. Corrigido aqui, mas o padrão se repete em qualquer material gerado a partir de
template.

**Por que vale mencionar num capítulo de armadilhas:** material publicado com placeholder de
autor anuncia que nunca foi finalizado. Quem avalia adoção — coordenador, parecerista, colega —
vê isso antes de ver qualquer conteúdo.

**O que fazer:** antes de publicar um lote, busque tokens entre colchetes em todos os arquivos.
Atenção: `[1, 2, 3]`, `['col']` e `[h_{t-1}, x_t]` são notação legítima de código e matemática —
não são placeholders.

### 1.6 PDF e PPTX saem de sincronia

**[verificado]** O repositório mantém as duas versões de cada deck. Editar o `.pptx` e esquecer o
PDF cria divergência silenciosa: o aluno projeta uma versão, o professor edita outra.

**Mitigação já implementada:** `atualizar-pdfs.sh` converte só os decks cuja data é mais nova que
a do PDF. Detalhe contraintuitivo: **regerar um deck inalterado ainda aparece como alteração no
git**, porque o PDF carrega data de criação nos metadados. Use `--dry-run` antes de commitar em lote.

---

## 2. Riscos de condução

### 2.1 Turma heterogênea em programação

**[risco]** O modo de falha clássico: 20 % da turma termina o exercício em 10 min e fica ociosa;
30 % não sai da primeira célula e desiste na Aula 04.

**Mitigação que funciona sem criar duas disciplinas:** pareamento fixo (quem já programa com quem
não), por todo o semestre. O exercício guiado tem gabarito no notebook; o aluno que trava copia a
célula e segue, sem parar a aula. A avaliação é individual (arguição), o que impede carona.

**Sinal de alarme:** se na Aula 05 mais de um terço da turma não executou a célula 9, pare e
refaça o básico de Pandas antes de avançar para modelos.

### 2.2 O bloco prático come sem o tempo de discussão

**[risco]** A aula tem 40 min de prática e 15 de discussão. Quando o Colab demora ou um aluno
trava, o professor rouba da discussão — e a discussão é onde o julgamento crítico se forma.

**Mitigação:** cronômetro visível, e a regra de ouro — **a discussão não é cortada, a prática é
encerrada onde estiver**. Um exercício inacabado com discussão feita vale mais que o contrário.

### 2.3 A aula 07 é a que estoura o tempo

**[verificado]** `aula07_soft_sensors.ipynb` leva 186 s para executar — 20 vezes a mediana dos
demais. É a única que treina vários modelos em sequência.

**Mitigação:** rode-a antes da aula e deixe os resultados em cache no Colab, ou divida a turma em
duplas com uma máquina por dupla. Em notebook de aluno com 4 GB de RAM, pode passar de 5 min.

### 2.4 Overfitting que passa no gabarito

**[risco]** Os laboratórios têm metas numéricas (RMSE < 0,8 % no Lab 1; bater o XGBoost no Lab 2).
Meta numérica convida ao ajuste cego: o aluno otimiza até passar, sem validar. O modelo decora a
faixa de treino e o número fica bonito.

**Mitigação:** a rubrica trava o nível quando falta faixa de validade declarada (ver
[`rubricas.md`](rubricas.md)). E cobre **extrapolação** no Lab 3 — o único laboratório em que o
aluno vê o modelo falhando fora da faixa e precisa explicar por quê.

### 2.5 Vazamento temporal em features de lag

**[risco]** A Aula 03 ensina lags e médias móveis. É onde o vazamento nasce: usar média móvel
centrada, ou normalizar antes de dividir treino/teste, contamina o resultado. O aluno acerta por
acidente e aprende o método errado.

**Mitigação:** peça sempre a ordem das operações — dividir primeiro, normalizar depois, com os
parâmetros do treino. Um gráfico de resíduo no tempo expõe o vazamento melhor que qualquer métrica.

### 2.6 Dataset sintético é mais fácil que planta real

**[risco]** Os 34 arquivos são gerados com seed fixa e fenômenos plantados. Isso dá
reprodutibilidade, mas cria um mundo mais limpo que a planta: menos variável não medida, menos
atraso variável, menos sensor mentindo ao mesmo tempo.

**Mitigação:** diga isso em voz alta na Aula 01. E use a Aula 21 (governança, drift) para mostrar
o que muda quando o processo envelhece. Aluno que sai achando que dado industrial é organizado
vai sofrer no primeiro estágio.

---

## 3. Falhas de desenho a corrigir se você adotar o material

| Item | Situação | O que fazer |
|---|---|---|
| Caminhos de dataset | O README já apontou para pastas inexistentes (corrigido na v1.1.0) | Confira todo caminho citado contra `dados/` antes de publicar sua versão |
| Aulas 24–30 | São oficinas, sem tarefa nem dataset | Não procure material que não existe; são condução de projeto |
| Aula 16 (MPC) | O notebook simula o FOPDT inline; o CSV existe como apoio | Se quiser dados reais de malha aberta, use o CSV — mas o notebook não o carrega |
| Aulas 05, 07, 08, 09 | Reutilizam o dataset da Aula 04 de propósito | Não "conserte" isso criando dataset novo: a repetição é o método |
| Peso da participação | 10 % é frágil de medir | Substitua por arguição curta registrada em planilha, ou zere e redistribua |

---

## 4. Checklist antes do primeiro dia

- [ ] Rode `pip install -r requirements.txt` e execute um notebook em ambiente limpo
- [ ] Abra a primeira célula de cada notebook que vai usar — as URLs de dados respondem?
- [ ] Verifique se a turma tem acesso ao Colab com a conta institucional (bloqueio de domínio é comum)
- [ ] Decida agora como vai avaliar os laboratórios **sabendo que o gabarito é público**
- [ ] Coloque a política de uso de IA generativa na ementa, não no edital de recurso
- [ ] Rode `atualizar-pdfs.sh` se editou alguma apresentação
- [ ] Leia a aula 07 antes das outras: é a que exige mais preparo técnico
