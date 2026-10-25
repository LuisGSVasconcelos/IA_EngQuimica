# Ementa e projeto pedagógico

**IA Aplicada à Engenharia Química** · 30 aulas × 100 min = 50 h
Graduação em Engenharia Química · ênfase em Engenharia de Sistemas de Processos

> Este documento é a peça de abertura do Guia do Professor. Ele descreve **o que** a
> disciplina ensina e **por que** nessa ordem. O detalhamento aula por aula está em
> [`cronograma.md`](cronograma.md); a avaliação, em [`rubricas.md`](rubricas.md).

---

## 1. Identificação

| Campo | Valor |
|---|---|
| Disciplina | IA Aplicada à Engenharia Química |
| Carga horária | 50 h (30 encontros de 100 min) |
| Nível | Graduação, a partir do 6º período |
| Pré-requisitos | Cálculo I, Álgebra Linear, Balanço de Massa e Energia, Fenômenos de Transporte |
| Pré-requisitos **dispensáveis** | Programação e Machine Learning — o curso constrói os dois do zero |
| Laboratório | Google Colab (navegador), sem instalação local |
| Vagas típicas por turma | 20 a 40 alunos, em duplas nos laboratórios |

### O que o aluno precisa saber antes

Lógica de programação básica (variável, laço, função) e o conceito de balanço de
massa/energia. **Não** é exigido curso prévio de estatística avançada, Python ou machine
learning. A Aula 01 começa no `pd.read_csv()` e o Módulo 2 constrói regressão do zero.

Se a turma for heterogênea em programação — o caso mais comum —, veja o capítulo
[`armadilhas.md`](armadilhas.md) antes da primeira aula: há uma estratégia de pareamento
que resolve isso sem criar duas disciplinas.

---

## 2. Justificativa

O engenheiro químico formado hoje vai trabalhar com dados que já existem na planta —
PIMS, SCADA, historian — mas raramente recebeu formação para transformá-los em decisão.
Os cursos tradicionais ensinam modelagem fenomenológica e controle clássico; a literatura
de machine learning ensina algoritmos com exemplos de preço de imóvel e dígitos escritos à mão.

O resultado é um vão previsível: o profissional sabe que "IA resolve", não sabe onde ela
falha, e não consegue julgar se um modelo entregue por terceiros é confiável.

Esta disciplina ocupa exatamente esse vão. Cada algoritmo entra acompanhado do problema de
processo que ele resolve e do modo como ele engana quem não olha — vazamento de dados,
overfitting que passa no gabarito, modelo que só funciona na faixa de treino.

### A escolha de projeto que sustenta o curso

Quatro decisões de desenho explicam o comportamento do curso inteiro:

1. **Um processo, muitas tarefas.** As aulas 04, 05, 07, 08 e 09 usam o *mesmo* dataset de
   coluna de destilação com 30 dias. Trocar de dataset a cada aula ensina ferramenta; manter
   o processo ensina método — o aluno vê a mesma variável sendo explorada, prevista,
   transformada em soft-sensor e depois modelada por rede neural.
2. **Dados sintéticos com seed fixa.** Cada dataset é gerado com `seed=42` e fenômenos
   plantados de propósito (NaN, outliers, drift, falha de sensor). O aluno investiga um
   defeito que existe por construção, e o professor pode reproduzir qualquer resultado.
3. **Laboratório antes de teoria nova.** Os três laboratórios (aulas 08, 10 e 12) vêm
   imediatamente depois do conceito que exercitam, não no fim do módulo.
4. **Aula de 100 min com estrutura fixa.** 10 min de abertura, 25 de teoria, 40 de prática,
   15 de discussão, 10 de fechamento e tarefa. A previsibilidade libera carga cognitiva
   para o conteúdo.

---

## 3. Objetivo geral

Capacitar o aluno a **formular, construir, validar e criticar** soluções de aprendizado de
máquina para problemas de engenharia de sistemas de processos — predição, soft-sensors,
detecção de anomalias, manutenção preditiva, otimização e controle — reconhecendo os limites
de cada modelo e as condições em que ele deixa de valer.

O verbo final não é "implementar": é **criticar**. Um engenheiro que sabe treinar um modelo
e não sabe quando desconfiar dele é mais perigoso que um que nunca treinou.

---

## 4. Competências e evidência de avaliação

Cada competência abaixo é declarada junto com **o instrumento que a evidencia**. Competência
sem instrumento é intenção, não currículo.

| # | Competência | Evidenciada por |
|---|---|---|
| C1 | Tratar série temporal industrial: faltantes, outliers, ruído, alinhamento de frequências | Lab 1 · tarefa da Aula 02 |
| C2 | Construir features com significado físico (lags, médias móveis, taxas) sem vazamento temporal | Tarefa da Aula 03 · projeto |
| C3 | Escolher e justificar modelo por meio de validação adequada ao problema | Tarefa da Aula 06 · projeto |
| C4 | Projetar um soft-sensor completo: variável-alvo, atraso, métrica, faixa de validade | **Lab 1** |
| C5 | Treinar e diagnosticar rede neural (MLP) para regressão de processo | **Lab 2** |
| C6 | Construir modelo híbrido caixa-cinza combinando conhecimento fenomenológico e dado | **Lab 3** |
| C7 | Detectar e explicar anomalias de processo, distinguindo falha de mudança de regime | Tarefa da Aula 18 · projeto |
| C8 | Comunicar resultado técnico para dois públicos: pares e gestão | Relatório executivo + pitch (Aulas 27–29) |

### Progressão cognitiva (Bloom)

A matriz abaixo é o esqueleto do curso. Ela mostra que a exigência cognitiva sobe por módulo,
e não por aula isolada — o que evita a armadilha do curso que só "aplica" do começo ao fim.

| Módulo | Aulas | Bloom dominante | O que o aluno faz |
|---|---|---|---|
| M1 — Fundamentos e Dados | 01–04 | Lembrar → Analisar | Reconhece a arquitetura de dados e investiga a qualidade |
| M2 — Aprendizado de Máquina | 05–12 | Aplicar → **Criar** | Treina, valida e constrói soft-sensor, MLP e híbrido |
| M3 — Modelagem Dinâmica | 13–14 | Compreender → Aplicar | Modela dependência temporal e projeta o LSTM |
| M4 — Otimização, Controle e Confiabilidade | 15–18 | Analisar → Criar | Otimiza, simula MPC, estima RUL, diagnostica anomalia |
| M5 — Ciclo de Vida do Modelo | 19–23 | **Avaliar** | Julga interpretabilidade, governança, ética e risco |
| M6 — Projeto Integrador | 24–30 | **Criar** e Avaliar | Executa e defende um projeto próprio de ponta a ponta |

---

## 5. Conteúdo programático

**M1 — Fundamentos e Dados (aulas 01–04).** IA na engenharia química; a pirâmide de dados
industriais (sensor → PLC → SCADA → PIMS); estrutura de séries temporais; qualidade de dados;
engenharia de features; análise exploratória aplicada a processo.

**M2 — Aprendizado de Máquina (aulas 05–12).** Regressão linear e regularizada; árvores e
ensembles; gradient boosting; validação cruzada e diagnóstico de over/underfitting; métricas
por tipo de erro; conceito e projeto de soft-sensors; redes MLP; modelagem híbrida caixa-cinza;
três laboratórios práticos com template e gabarito.

**M3 — Modelagem Dinâmica (aulas 13–14).** Resposta dinâmica, FOPDT, atraso de transporte;
séries temporais; janelas deslizantes; LSTM para predição dinâmica.

**M4 — Otimização, Controle e Confiabilidade (aulas 15–18).** Otimização de processo com
modelo substituto; MPC — conceito, horizonte, modelo de predição; manutenção preditiva e RUL;
detecção e diagnóstico de anomalias (PCA, Isolation Forest, autoencoder).

**M5 — Ciclo de Vida do Modelo (aulas 19–23).** Interpretabilidade (SHAP); gêmeos digitais e
IIoT; implantação, monitoramento de drift e governança (champion/challenger); ética, segurança
industrial e responsabilidade técnica; o engenheiro químico do futuro.

**M6 — Projeto Integrador (aulas 24–30).** Mentoria, duas oficinas de desenvolvimento,
consolidação de resultados, ensaio e apresentações finais.

---

## 6. Metodologia

### Anatomia fixa da aula de 100 min

| Bloco | Tempo | Função |
|---|---|---|
| Abertura | 10 min | Pergunta-desafio que ancora o tema no processo |
| Teoria | 25 min | Conceito mínimo necessário — não a literatura completa |
| Prática | 40 min | Exercício guiado (20) + exercício em grupo (20) |
| Discussão e fechamento | 15 min | O que o resultado significa, o que ele não prova |
| Tarefa | 10 min | Transferência: mesmo método, outro processo |

### Três lentes pedagógicas

O material original usa três lentes para diversificar o formato. Vale a leitura crítica do
que cada uma sustenta:

| Lente | Uso legítimo | Cuidado |
|---|---|---|
| **Bloom** | Estruturar progressão cognitiva ao longo do curso | Sólido como espinha dorsal |
| **Felder-Silverman** | Garantir **variedade de formato** na mesma aula (ativo/reflexivo, visual/verbal, sequencial/global) | A evidência de que "ensinar conforme o estilo do aluno" melhora aprendizado é fraca. Use como checklist de variedade, não como diagnóstico do aluno |
| **MBTI (NT/SJ)** | Planejar estímulos diferentes: problema aberto (NT) e cronograma/checklist (SJ) | Validade psicométrica contestada. Trate como metáfora de design, nunca como classificação de estudante |

A honestidade aqui importa: o curso não fica mais fraco por dizer que duas das três lentes
são heurísticas de variedade. Fica mais defensável.

---

## 7. Avaliação

> **Proposta de composição.** Ajuste pesos e instrumentos à sua instituição — o que não deve
> mudar é o princípio: *a nota precisa vir de algo que o aluno faria num emprego*.

| Instrumento | Peso sugerido | O que mede |
|---|---|---|
| Laboratórios 1, 2 e 3 | 30% (10% cada) | Execução técnica com entrega verificável |
| Projeto integrador | 40% | Formulação do problema, validação, comunicação |
| Tarefas pós-aula | 20% | Transferência para outro processo |
| Participação e discussão | 10% | Julgamento crítico — especialmente nas aulas 19–23 |

### Princípios

1. **Nota por decisão, não por acerto.** Um modelo com R² pior, mas com validação temporal
   correta, vale mais que um R² alto obtido com vazamento.
2. **Faixa de validade explícita.** Todo modelo entregue declara onde deixa de valer.
3. **Duas audiências.** O relatório executivo (2 páginas, para gestão) e o pitch de 12 min
   (para pares) avaliam competências diferentes.

Rubricas detalhadas por nível em [`rubricas.md`](rubricas.md).

---

## 8. Recursos

| Recurso | Onde |
|---|---|
| 26 notebooks prontos para Colab | [`../notebooks/`](../notebooks/) |
| 34 arquivos de dados sintéticos (seed 42) | [`../dados/`](../dados/) |
| 27 apresentações (PPTX + PDF, 265 slides) | [`../slides/`](../slides/) |
| Dependências para execução local | [`../requirements.txt`](../requirements.txt) |
| Verificação de execução | seção "Verificação" do [README](../README.md) |

Todo o material tem DOI: **10.5281/zenodo.23649424**.

---

## 9. Bibliografia de referência

Agregada a partir das 30 aulas. As obras se repetem porque sustentam mais de um módulo.

**Fundamentos de ML aplicado a processo**
- Géron, A. *Hands-On Machine Learning with Scikit-Learn, Keras & TensorFlow*. O'Reilly.
- McKinney, W. *Python for Data Analysis*. O'Reilly.
- VanderPlas, J. *Python Data Science Handbook*. O'Reilly.

**Engenharia química e sistemas de processos**
- Seborg, D. et al. *Process Dynamics and Control*. Wiley.
- Fogler, H. S. *Elementos de Engenharia das Reações Químicas*. Pearson.
- Shardt, Y. *Statistics for Chemical and Process Engineers*. Springer.

**IA em processos industriais**
- Venkatasubramanian, V. *Artificial Intelligence in Chemical Engineering*.
- Chiang, L.; Russell, E.; Braatz, R. *Fault Detection and Diagnosis in Industrial Systems*. Springer.

**Didática e avaliação**
- Anderson, L.; Krathwohl, D. *A Taxonomy for Learning, Teaching and Assessing* (Bloom revisada).
- Wiggins, G.; McTighe, J. *Understanding by Design*.

> A bibliografia completa por aula está em cada plano de aula. Esta lista é o núcleo que
> sustenta a disciplina inteira — comece por ela se estiver montando o curso do zero.

---

## 10. Como usar este guia

Se você vai **ministrar a disciplina inteira**: leia este documento, depois `cronograma.md`,
e rode a verificação dos notebooks antes do primeiro dia.

Se você vai **usar só um módulo**: o Módulo 2 é autossuficiente e o mais replicável — são
oito aulas com três laboratórios e não dependem do M1 além do tratamento de dados.

Se você quer **só uma aula**: o `cronograma.md` tem uma página por aula, com objetivo,
sequência, materiais, dataset e tarefa. Uma página basta para dar a aula.

Antes de começar, leia [`armadilhas.md`](armadilhas.md). Ele existe para você não repetir
erros que já custaram aula.
