# Cronograma — uma página por aula

30 encontros de 100 min. Cada página traz objetivo, sequência didática, materiais, dados,
apresentação e tarefa — o suficiente para dar a aula sem abrir o plano completo.

> **Como ler a coluna de dados.** A marca **reuso** indica que a aula **reutiliza o dataset**
> de uma aula anterior, de propósito: mesmo processo, tarefa cognitiva diferente. `Template` é o notebook com as
> lacunas para o aluno preencher; `Gabarito` é a versão resolvida, para o professor.

---

## Visão geral

| # | Aula | Módulo | Bloom |
|---|------|--------|-------|
| 01 | Introdução à IA na Engenharia Química | M1 | Lembrar → Analisar |
| 02 | Estrutura e Tratamento de Dados Industriais | M1 | Lembrar → Analisar |
| 03 | Engenharia de Features Industriais | M1 | Lembrar → Analisar |
| 04 | Análise Exploratória e Visualização (EDA) | M1 | Lembrar → Avaliar |
| 05 | Machine Learning Supervisionado | M2 | Lembrar → Avaliar |
| 06 | Avaliação e Validação de Modelos | M2 | Lembrar → Avaliar |
| 07 | Conceito e Projeto de Soft-Sensors | M2 | Lembrar → Avaliar |
| 08 | Laboratório Prático 1 — Soft-Sensor | M2 | Lembrar → Criar |
| 09 | Introdução às Redes Neurais Artificiais | M2 | Lembrar → Analisar |
| 10 | Laboratório Prático 2 — Redes Neurais | M2 | Lembrar → Criar |
| 11 | Modelagem Híbrida e Caixa Cinza | M2 | Lembrar → Avaliar |
| 12 | Laboratório Prático 3 — Modelo Híbrido | M2 | Lembrar → Criar |
| 13 | Dinâmica de Processos e Séries Temporais | M3 | Lembrar → Analisar |
| 14 | LSTM para Predição Dinâmica | M3 | Lembrar → Avaliar |
| 15 | Otimização de Processos com IA | M4 | Lembrar → Criar |
| 16 | Visão Conceitual de Controle Avançado | M4 | Lembrar → Analisar |
| 17 | Manutenção Preditiva e RUL | M4 | Lembrar → Analisar |
| 18 | Detecção e Diagnóstico de Anomalias | M4 | Lembrar → Criar |
| 19 | Interpretabilidade e Explicabilidade (XAI) | M5 | Lembrar → Criar |
| 20 | Gêmeos Digitais, IIoT e IA Generativa | M5 | Lembrar → Criar |
| 21 | Desafios de Implantação e Governança de IA | M5 | Lembrar → Criar |
| 22 | Ética, Segurança Industrial e Responsabilidade | M5 | Lembrar → Criar |
| 23 | O Engenheiro Químico do Futuro | M5 | Lembrar → Criar |
| 24 | Checkpoint e Mentoria do Projeto Prático | M6 | Lembrar → Criar |
| 25 | Oficina de Desenvolvimento I | M6 | Lembrar → Criar |
| 26 | Oficina de Desenvolvimento II | M6 | Aplicar → Avaliar |
| 27 | Consolidação dos Resultados do Projeto Integrador | M6 | Lembrar → Criar |
| 28 | Ensaio e Ajustes de Apresentação | M6 | Lembrar → Criar |
| 29 | Apresentações Finais I | M6 | Lembrar → Criar |
| 30 | Apresentações Finais II e Encerramento do Curso | M6 | Lembrar → Criar |

27 das 30 aulas têm apresentação. As 3 sem deck são as 08, 10, 12 — laboratórios, conduzidos direto no notebook.

---

## Aula 01 — Introdução à IA na Engenharia Química

**M1 — Fundamentos e Dados** · 100 min

**Objetivo.** Capacitar o aluno a situar a IA no contexto da Engenharia Química, reconhecer a arquitetura de dados industriais (PIMS/SCADA) e executar seu primeiro notebook Python para análise de dados de processo.

| Recurso | Onde |
|---|---|
| Notebook | [`aula01_exercicio.ipynb`](../notebooks/aula01_exercicio.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula01_exercicio.ipynb) |
| Dados | `aula01/coluna_destilacao_24h.csv` |
| Apresentação | [pptx](../slides/Aula_01_Introducao_IA_EngQuimica.pptx) · [pdf](../slides/pdf/Aula_01_Introducao_IA_EngQuimica.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — O Engenheiro Químico na Era dos Dados
1. Teoria (25 min) — Indústria 4.0, PIMS/SCADA e o Papel dos Dados na Engenharia Química
1. Prática (40 min) — Seu Primeiro Notebook: Dados de Processo no Python
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se você pudesse perguntar qualquer coisa sobre os 10 mil sensores de uma planta de eteno, o que perguntaria?*

**Tarefa pós-aula.** **Tarefa individual — "Meu Primeiro Mini-Relatório"** Usando qualquer conjunto de dados de processo que você encontrar (sugestão: buscar na internet "chemical process dataset csv" ou usar dados de temperatura do seu dia a dia), crie um notebook no Google Colab que: 1. Importe pandas e carregue o dataset 2. Exiba as primeiras 10 linhas 3. Calcule estatísticas descritivas 4. Gere **1 gráfico** de uma variável ao longo do tempo 5. Escreva **3 bullet points** de observações técnicas (em português) **Trilha NT (desafio extra, opcional):** Tente encontrar um dataset com **pelo menos 5 variáveis** e […]

---

## Aula 02 — Estrutura e Tratamento de Dados Industriais

**M1 — Fundamentos e Dados** · 100 min

**Objetivo.** Capacitar o aluno a carregar séries temporais industriais reais, identificar e tratar dados faltantes, outliers e ruídos de medição usando Pandas e métodos estatísticos.

| Recurso | Onde |
|---|---|
| Notebook | [`aula02_limpeza.ipynb`](../notebooks/aula02_limpeza.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula02_limpeza.ipynb) |
| Dados | `aula02/` — 5 arquivos (variantes A–D) |
| Apresentação | [pptx](../slides/Aula_02_Tratamento_Dados_Industriais.pptx) · [pdf](../slides/pdf/Aula_02_Tratamento_Dados_Industriais.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — Dados Reais São Imperfeitos
1. Teoria (25 min) — Técnicas de Limpeza de Dados Industriais
1. Prática (40 min) — Mão na Massa: Limpando Dados Reais de Planta
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se 30% dos dados de um sensor estão corrompidos, você descarta o sensor inteiro ou tenta recuperar? Qual o limite aceitável?*

**Tarefa pós-aula.** **Tarefa individual — "Meu Pipeline de Limpeza"** Baixe qualquer dataset público de processo (sugestões: [Kaggle Chemical Process](https://www.kaggle.com/datasets), [UCI ML Repository](https://archive.ics.uci.edu/ml/datasets.php), ou use o mesmo dataset da aula) e **intencionalmente corrompa** os dados adicionando: - 2% de NaN aleatórios - 3 outliers em uma variável à sua escolha - Ruído gaussiano com $\sigma = 2\%$ do valor médio Depois, crie um notebook que: 1. Carregue os dados corrompidos 2. Diagnostique os problemas (gráficos + tabelas) 3. Aplique o pipeline de limpeza (NaN → outliers → […]

---

## Aula 03 — Engenharia de Features Industriais

**M1 — Fundamentos e Dados** · 100 min

**Objetivo.** Capacitar o aluno a transformar séries temporais brutas em features informativas — lags, médias móveis, taxas de variação — e alinhar bases com frequências de amostragem diferentes, preparando os dados para modelagem preditiva.

| Recurso | Onde |
|---|---|
| Notebook | [`aula03_features.ipynb`](../notebooks/aula03_features.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula03_features.ipynb) |
| Dados | `aula03/` — 4 arquivos |
| Apresentação | [pptx](../slides/Aula_03_Features_Industriais.pptx) · [pdf](../slides/pdf/Aula_03_Features_Industriais.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — O Que o Passado Diz Sobre o Futuro?
1. Teoria (25 min) — Lags, Médias Móveis e Alinhamento Temporal
1. Prática (40 min) — Construindo Features para um Reator CSTR
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se a temperatura de topo agora afeta a composição daqui a 3 minutos, qual o lag ideal? E se o processo tiver atraso de transporte de 7 minutos?*

**Tarefa pós-aula.** **Tarefa individual — "Feature Engineering para um Trocador de Calor"** Você recebe um dataset de um **trocador de calor casco e tubo** com duas taxas de amostragem: - Variáveis de processo: `T_entrada`, `T_saida`, `vazao_fluido`, disponíveis a cada 30s - Variável de qualidade: `coeficiente_U` (coeficiente global de troca térmica, calculado semanalmente por balanço de energia), disponível 1x/semana (6 valores para 6 semanas) Sua missão: 1. Carregar e alinhar os dados (dica: o target é semanal — você precisa agregar as features por semana) 2. Criar pelo menos **6 features** diferentes […]

---

## Aula 04 — Análise Exploratória e Visualização (EDA)

**M1 — Fundamentos e Dados** · 100 min

**Objetivo.** Capacitar o aluno a explorar visualmente bases de dados industriais usando Seaborn e Matplotlib — identificando distribuições, correlações, anomalias visuais e contando a história do processo através dos gráficos.

| Recurso | Onde |
|---|---|
| Notebook | [`aula04_eda.ipynb`](../notebooks/aula04_eda.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula04_eda.ipynb) |
| Dados | `aula04/coluna_destilacao_30dias.csv` |
| Apresentação | [pptx](../slides/Aula_04_EDA.pptx) · [pdf](../slides/pdf/Aula_04_EDA.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — Uma Imagem Vale Mil Dados
1. Teoria (25 min) — O Kit de Ferramentas da EDA
1. Prática (40 min) — EDA Completa de uma Planta de Destilação
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se o heatmap mostra correlação zero entre pressão e temperatura, mas a termodinâmica diz que P e T estão relacionadas (gás ideal), o que está errado? Dados? Feature? Escala?*

**Tarefa pós-aula.** **Tarefa individual — "Relatório de EDA de um Processo"** Escolha **um dataset industrial** (pode ser o mesmo da aula, o da tarefa anterior, ou um novo — Kaggle/UCI): Crie um notebook Colab com um relatório visual completo contendo: 1. **Capas:** Título, autor, fonte dos dados, período 2. **Seção 1 — Visão Geral:** `info()`, `describe()`, primeiras linhas 3. **Seção 2 — Distribuições:** histogramas + KDE para 5 variáveis, com comentários (quais são normais? quais são bimodais?) 4. **Seção 3 — Séries Temporais:** gráfico de 3 variáveis ao longo do tempo — identificar tendências e anomalias […]

---

## Aula 05 — Machine Learning Supervisionado

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a compreender os fundamentos da regressão supervisionada — da regressão linear simples ao ensemble com gradient boosting — treinando e comparando modelos para predição de variáveis de processo (composição, conversão, temperatura).

| Recurso | Onde |
|---|---|
| Notebook | [`aula05_ml_supervisionado.ipynb`](../notebooks/aula05_ml_supervisionado.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula05_ml_supervisionado.ipynb) |
| Dados | **reuso** · `aula04/coluna_destilacao_30dias.csv` |
| Apresentação | [pptx](../slides/Aula_05_ML_Supervisionado.pptx) · [pdf](../slides/pdf/Aula_05_ML_Supervisionado.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — Ensinando o Computador a Prever
1. Teoria (25 min) — Quatro Algoritmos, Uma Missão: Predizer
1. Prática (40 min) — Treinando e Comparando 4 Modelos
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se uma árvore de decisão pode desenhar 'degraus' para ajustar qualquer curva, por que não usamos árvores gigantes com profundidade 1000?*

**Tarefa pós-aula.** **Tarefa individual — "Comparando Modelos para o CSTR"** Usando o dataset do **reator CSTR** (features + conversão da Aula 3), você deve: 1. Treinar os mesmos 4 modelos (LinearRegression, DecisionTree, RandomForest, XGBoost) 2. Calcular $R^2$ e RMSE para treino e teste 3. Criar uma **tabela comparativa** formatada 4. Identificar: qual modelo apresentou **maior overfitting**? qual apresentou **melhor generalização**? 5. Plotar predicted vs real para o melhor e o pior modelo (lado a lado) 6. Escrever **1 parágrafo** recomendando qual modelo você implementaria como soft-sensor — e por quê […]

---

## Aula 06 — Avaliação e Validação de Modelos

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a avaliar modelos preditivos com métricas de engenharia, diagnosticar overfitting vs underfitting e usar validação cruzada para estimar a capacidade de generalização — sempre no contexto de processos químicos.

| Recurso | Onde |
|---|---|
| Notebook | [`aula06_validacao.ipynb`](../notebooks/aula06_validacao.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula06_validacao.ipynb) |
| Dados | `aula06/` — 4 arquivos (cenários A/B/C) |
| Apresentação | [pptx](../slides/Aula_06_Validacao.pptx) · [pdf](../slides/pdf/Aula_06_Validacao.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — O Modelo É Bom o Bastante para Operar a Planta?
1. Teoria (25 min) — Métricas, Overfitting e Validação Cruzada
1. Prática (40 min) — Validando Modelos como um Engenheiro
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Na engenharia química, errar a composição em 0,5% pode significar produto fora da especificação = R$ 500.000 de perda. Errar a temperatura em 5 °C pode ser uma explosão. Qual métrica captura o **custo** do erro?*

**Tarefa pós-aula.** **Tarefa individual — "Relatório de Validação de Modelo"** Usando o dataset **CSTR** das aulas anteriores (ou um novo de sua escolha), você deve produzir um **relatório completo de validação** no formato de notebook Colab: 1. **Seção 1 — Split e Treino:** Treine pelo menos 2 modelos (Random Forest + XGBoost) 2. **Seção 2 — Métricas:** Calcule $R^2$, RMSE, MAE para treino e teste — tabela formatada 3. **Seção 3 — Diagnóstico:** A diferença $R^2_{treino} - R^2_{teste}$ indica overfitting? Justifique 4. **Seção 4 — Validação Cruzada:** k=5, reporte média ± desvio do $R^2$ 5. **Seção 5 — […]

---

## Aula 07 — Conceito e Projeto de Soft-Sensors

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a compreender o conceito, a arquitetura e as etapas de projeto de um soft-sensor industrial — justificando sua aplicação, selecionando variáveis secundárias (features) e avaliando a viabilidade técnica vs. analisadores físicos.

| Recurso | Onde |
|---|---|
| Notebook | [`aula07_soft_sensors.ipynb`](../notebooks/aula07_soft_sensors.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula07_soft_sensors.ipynb) |
| Dados | **reuso** · `aula04/coluna_destilacao_30dias.csv` |
| Apresentação | [pptx](../slides/Aula_07_Soft_Sensors.pptx) · [pdf](../slides/pdf/Aula_07_Soft_Sensors.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — O Problema que Nenhum Sensor Resolve
1. Teoria (25 min) — Arquitetura e Projeto de Soft-Sensors
1. Prática (40 min) — Projetando um Soft-Sensor para Coluna de Destilação
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se o GC custa R$ 200k + R$ 30k/ano de manutenção, e o soft-sensor custa R$ 10k para desenvolver + R$ 1k/mês de nuvem, qual o payback? E se o erro do soft-sensor for 2% maior que o GC?*

**Tarefa pós-aula.** **Tarefa individual — "Projeto Conceitual de um Soft-Sensor"** Escolha **um processo químico** (pode ser da lista abaixo ou outro da sua escolha): - Reator CSTR — estimar conversão em tempo real - Coluna de destilação — estimar composição do produto de fundo - Trocador de calor — estimar coeficiente de incrustação ($U/U_0$) - Evaporador — estimar Brix (concentração) do produto Crie um **notebook Colab** com: 1. **Seção 1 — Definição:** Descreva o processo, a variável primária, a precisão requerida e a frequência desejada.

---

## Aula 08 — Laboratório Prático 1 — Soft-Sensor

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a construir, validar e documentar um soft-sensor funcional em Python — do CSV ao modelo treinado, passando por todo o pipeline de dados, features, modelagem e avaliação — entregando um notebook completo que poderia ser apresentado a um gerente de planta.

| Recurso | Onde |
|---|---|
| Notebook | [`Lab1_SoftSensor_Template.ipynb`](../notebooks/Lab1_SoftSensor_Template.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab1_SoftSensor_Template.ipynb) · [gabarito](../notebooks/Lab1_SoftSensor_Gabarito.ipynb) |
| Dados | **reuso** · `aula04/coluna_destilacao_30dias.csv` |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Missão: Construir um Soft-Sensor Funcional
1. Setup (10 min) + Teoria Relâmpago (10 min) = 20 min
1. Prática (60 min) — Construção do Soft-Sensor (10 Células)
1. Discussão e Fechamento (20 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** **Tarefa — "Meu Soft-Sensor do Zero"** O entregável é um **notebook completo** que poderia ser apresentado a um gerente de planta. Use o **mesmo dataset** da aula ou um diferente se preferir. Seu notebook deve conter **obrigatoriamente**: 1. **Cabeçalho:** Título, autor, data, descrição do problema em 3 frases 2. **Carregamento e EDA:** info(), describe(), pairplot + heatmap + texto interpretando as correlações 3. **Limpeza e Features:** tratamento de NaN, detecção de outliers, criação de lags/médias móveis + justificativa 4. **Modelagem:** Regressão Linear, Random Forest, XGBoost — todos com […]

---

## Aula 09 — Introdução às Redes Neurais Artificiais

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a compreender o funcionamento interno de uma rede neural artificial — neurônio, camadas, funções de ativação, feedforward e backpropagation — e implementar uma MLP simples com Scikit-Learn para predição em processo químico.

| Recurso | Onde |
|---|---|
| Notebook | [`aula09_redes_neurais.ipynb`](../notebooks/aula09_redes_neurais.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula09_redes_neurais.ipynb) |
| Dados | **reuso** · `aula04/coluna_destilacao_30dias.csv` |
| Apresentação | [pptx](../slides/Aula_09_Redes_Neurais.pptx) · [pdf](../slides/pdf/Aula_09_Redes_Neurais.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — O Neurônio que Aprende
1. Teoria (25 min) — Do Neurônio à MLP
1. Prática (40 min) — MLP para Predição de Composição
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Um neurônio só consegue aprender relações LINEARES. Como 3 neurônios em camada aprendem uma curva? Onde nasce a não-linearidade?*

**Tarefa pós-aula.** **Tarefa individual — "MLP vs XGBoost para o CSTR"** Usando o dataset do **reator CSTR** (das aulas anteriores): 1. Treine uma MLP com arquitetura (64, 32, 16) + ReLU, dados escalados 2. Treine um XGBoost (n_estimators=200) como baseline 3. Compare RMSE, $R^2$ e **tempo de treinamento** (use `%%time` na célula) 4. Plote predicted vs real para ambos (lado a lado) 5. A MLP superou o XGBoost? Quando você escolheria uma MLP vs XGBoost? **Trilha NT (desafio extra, opcional):** Teste MLPs com **1 camada oculta de tamanho variável**: `(2,)`, `(8,)`, `(32,)`, `(128,)`.

---

## Aula 10 — Laboratório Prático 2 — Redes Neurais

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a construir, treinar, avaliar e ajustar uma rede neural MLP usando Keras/TensorFlow — da definição da arquitetura ao salvamento do modelo treinado — aplicada à predição de rendimento de um reator químico.

| Recurso | Onde |
|---|---|
| Notebook | [`Lab2_MLP_Keras_Template.ipynb`](../notebooks/Lab2_MLP_Keras_Template.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab2_MLP_Keras_Template.ipynb) · [gabarito](../notebooks/Lab2_MLP_Keras_Gabarito.ipynb) |
| Dados | `aula10/reator_rendimento.csv` |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Do Scikit-Learn ao Keras
1. Setup + Teoria Relâmpago (20 min)
1. Prática (60 min) — Construindo uma MLP com Keras
1. Discussão e Fechamento (10 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** **Tarefa — "MLP Keras para Coluna de Destilação"** Usando o dataset `coluna_destilacao_30dias.csv`, construa uma MLP em Keras seguindo o mesmo pipeline do laboratório: 1. Features: T_top, T_base, P_coluna, R_refluxo + lags (k=1,3) + média móvel (k=5) 2. Target: composição do destilado 3. Arquitetura: você decide — tente pelo menos 2 arquiteturas diferentes 4. Compile com Adam + EarlyStopping + ReduceLROnPlateau 5. Compare com XGBoost (baseline) 6. Salve o melhor modelo como `soft_sensor_coluna.keras` 7. Conclusão: a MLP superou o XGBoost? Qual arquitetura funcionou melhor? Por quê? **Trilha […]

---

## Aula 11 — Modelagem Híbrida e Caixa Cinza

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a compreender o paradigma da modelagem híbrida (caixa cinza) — onde leis de conservação (balanços) são combinadas com modelos de ML para estimar parâmetros desconhecidos — superando as limitações de modelos puramente fenomenológicos ou puramente baseados em dados.

| Recurso | Onde |
|---|---|
| Notebook | [`aula11_hibrido.ipynb`](../notebooks/aula11_hibrido.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula11_hibrido.ipynb) |
| Dados | `aula11/` — 3 arquivos |
| Apresentação | [pptx](../slides/Aula_11_Hibrido.pptx) · [pdf](../slides/pdf/Aula_11_Hibrido.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — O Melhor dos Dois Mundos
1. Teoria (25 min) — Balanço + ML = Modelo Híbrido
1. Prática (40 min) — Modelo Híbrido de um CSTR
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *No modelo híbrido, o ML não estima a saída do processo — ele estima um parâmetro físico (k, U). O que acontece com a predição se o ML estimar k com 20% de erro? O balanço de massa 'filtra' o erro ou amplifica?*

**Tarefa pós-aula.** **Tarefa — "Modelo Híbrido para Trocador de Calor"** Um **trocador de calor casco e tubo** tem seu coeficiente global $U$ descrito por correlações empíricas que podem estar desatualizadas devido à incrustação. O balanço de energia é: $$Q = U \cdot A \cdot \Delta T_{ml} = \dot{m} \cdot C_p \cdot (T_{\text{saída}} - T_{entrada})$$ onde $Q$ é a taxa de transferência, $A$ a área, $\Delta T_{ml}$ a média logarítmica, $\dot{m}$ a vazão mássica e $C_p$ o calor específico.

---

## Aula 12 — Laboratório Prático 3 — Modelo Híbrido

**M2 — Aprendizado de Máquina** · 100 min

**Objetivo.** Capacitar o aluno a implementar um modelo híbrido completo — do balanço fenomenológico ao ML acoplado — validando a consistência física das predições e comparando com modelos puramente baseados em dados.

| Recurso | Onde |
|---|---|
| Notebook | [`Lab3_Hibrido_Template.ipynb`](../notebooks/Lab3_Hibrido_Template.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab3_Hibrido_Template.ipynb) · [gabarito](../notebooks/Lab3_Hibrido_Gabarito.ipynb) |
| Dados | **reuso** · `aula11/cstr_hibrido.csv` |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Missão: Implementar um Modelo Híbrido
1. Setup + Teoria Relâmpago (15 min)
1. Prática (60 min) — Construindo o Híbrido
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** **Tarefa — "Híbrido para Trocador de Calor (completo)"** Usando o dataset `trocador_hibrido_lab.csv`, implemente um modelo híbrido completo: 1. **Balanço de energia:** $Q = U A \Delta T_{ml} = \dot{m} C_p (T_{\text{saída}} - T_{entrada})$ 2. **Calcular $U_{real}$** dos dados 3. **Treinar ML** para estimar $U$ a partir de $[\dot{m}, T_{entrada}]$ 4. **Acoplar:** $\hat{U} \rightarrow \hat{T}_{\text{saída}} = T_{entrada} + \frac{\hat{U} A \Delta T_{ml}}{\dot{m} C_p}$ 5. **Comparar** híbrido vs ML direto vs $U$ constante (interpolação + extrapolação) 6. **Conclusão:** qual modelo você […]

---

## Aula 13 — Dinâmica de Processos e Séries Temporais

**M3 — Modelagem Dinâmica** · 100 min

**Objetivo.** Capacitar o aluno a compreender por que processos químicos são inerentemente dinâmicos (atraso, inércia, acumulação), como modelar séries temporais com features baseadas em tempo, e por que redes recorrentes (LSTM) são necessárias quando a memória do processo importa.

| Recurso | Onde |
|---|---|
| Notebook | [`aula13_dinamica.ipynb`](../notebooks/aula13_dinamica.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula13_dinamica.ipynb) |
| Dados | `aula13/reator_dinamico.csv` |
| Apresentação | [pptx](../slides/Aula_13_Dinamica.pptx) · [pdf](../slides/pdf/Aula_13_Dinamica.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — O Tempo Não Para na Planta
1. Teoria (25 min) — O que Torna um Processo "Dinâmico"?
1. Prática (40 min) — Dinâmica na Prática
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *A constante de tempo τ de um CSTR é V/F. Se τ = 10 min e o atraso de transporte θ = 15 min, o que acontece quando você tenta controlar a composição com um PID?*

**Tarefa pós-aula.** **Tarefa — "Identificação FOPDT de um Processo Real"** Usando o dataset `reator_dinamico.csv` (dados reais de um CSTR com degraus na vazão): 1. Plote a série temporal completa — identifique os degraus 2. Isole **um degrau** e estime visualmente Kp, τ, θ (método da tangente ou 63.2%) 3. Simule um modelo FOPDT com esses parâmetros e sobreponha ao real 4. Calcule o RMSE do modelo FOPDT vs dados reais 5. Treine uma MLP com lags para predizer a saída — quantos lags usou? O RMSE da MLP é menor que o FOPDT? **Trilha NT (desafio extra, opcional):** Se o processo **não for FOPDT** (ex: segunda ordem) […]

---

## Aula 14 — LSTM para Predição Dinâmica

**M3 — Modelagem Dinâmica** · 100 min

**Objetivo.** Capacitar o aluno a implementar, treinar e avaliar uma rede LSTM (Long Short-Term Memory) em Keras/TensorFlow para predição de séries temporais de processos químicos — compreendendo quando e por que a LSTM supera modelos com lags fixos.

| Recurso | Onde |
|---|---|
| Notebook | [`aula14_lstm.ipynb`](../notebooks/aula14_lstm.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula14_lstm.ipynb) |
| Dados | **reuso** · `aula13/reator_dinamico.csv` |
| Apresentação | [pptx](../slides/Aula_14_LSTM.pptx) · [pdf](../slides/pdf/Aula_14_LSTM.pdf) |
| Bloom | Lembrar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — A Rede que Lembra
1. Teoria (20 min) — LSTM na Prática com Keras
1. Prática (60 min) — LSTM vs MLP para o CSTR Dinâmico
1. Discussão e Fechamento (10 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** **Tarefa — "LSTM para Coluna de Destilação"** Usando `coluna_destilacao_30dias.csv` (composição do destilado como target): 1. Converta os dados em sequências (window = 60 min = 60 timesteps) 2. Treine uma LSTM (camadas: LSTM(64) → LSTM(32) → Dense(1)) 3. Treine uma MLP com 60 lags (baseline) 4. Compare RMSE (1 passo) e RMSE (10 passos) 5. Plote predição para 2h de operação (120 min) com ambos os modelos 6. Conclusão: LSTM é vantajosa para este processo? **Trilha NT (desafio extra, opcional):** Teste **2 arquiteturas LSTM** diferentes: - LSTM de 1 camada (64 células) - LSTM de 2 camadas (64 → […]

---

## Aula 15 — Otimização de Processos com IA

**M4 — Otimização, Controle e Confiabilidade** · 100 min

**Objetivo.** Capacitar o aluno a usar modelos de ML como metamodelos (surrogate models) de processos químicos e acoplá-los a otimizadores numéricos para encontrar condições operacionais ótimas — maximizando rendimento, minimizando custo ou atendendo restrições.

| Recurso | Onde |
|---|---|
| Notebook | [`aula15_otimizacao.ipynb`](../notebooks/aula15_otimizacao.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula15_otimizacao.ipynb) |
| Dados | `aula15/cstr_rendimento.csv` |
| Apresentação | [pptx](../slides/Aula_15_Otimizacao.pptx) · [pdf](../slides/pdf/Aula_15_Otimizacao.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Encontrando a Agulha no Palheiro Operacional
1. Teoria (25 min) — Metamodelos e Otimização
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Otimizar o modelo vs otimizar a planta são problemas diferentes. Se o modelo erra em 2%, o ótimo encontrado é confiável?*

**Tarefa pós-aula.** Usando o dataset `coluna_destilacao_30dias.csv`, treine um metamodelo XGBoost para predizer composição do destilado a partir de `[R_refluxo, T_top, P_coluna]`. Otimize a razão de refluxo para maximizar pureza com restrição de custo energético (R_refluxo < 8). **Trilha NT:** Implemente otimização multiobjetivo: maximizar pureza E minimizar R_refluxo (custo). Plote a fronteira de Pareto. **Trilha SJ:** Checklist: [ ] metamodelo, [ ] função objetivo, [ ] otimização, [ ] validação, [ ] conclusão. **Entrega:** Link do Google Colab. Prazo: 7 dias. ---

---

## Aula 16 — Visão Conceitual de Controle Avançado

**M4 — Otimização, Controle e Confiabilidade** · 100 min

**Objetivo.** Capacitar o aluno a compreender a evolução do controle de processos — do PID clássico ao MPC baseado em modelo — e simular uma malha MPC com preditor ML, comparando desempenho em tracking de set-point e rejeição de perturbações.

| Recurso | Onde |
|---|---|
| Notebook | [`aula16_mpc.ipynb`](../notebooks/aula16_mpc.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula16_mpc.ipynb) |
| Dados | — (FOPDT simulado no notebook) |
| Apresentação | [pptx](../slides/Aula_16_MPC.pptx) · [pdf](../slides/pdf/Aula_16_MPC.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — Do Retrovisor ao Para-brisa
1. Teoria (25 min) — Do PID ao MPC com ML
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *O MPC 'enxerga' 30 min à frente. Se o modelo de predição erra em 10%, o MPC ainda acerta o set-point? O que acontece com a estabilidade?*

**Tarefa pós-aula.** Implemente um MPC que usa **um modelo LSTM** (da Aula 14) como preditor para controle de temperatura de um reator CSTR. Compare com PID. O LSTM é mais lento para avaliar — o MPC ainda roda em tempo real? (meça o tempo de cada otimização). **Trilha NT:** Adicione uma restrição de slew rate ($\Delta u_{max} = 2$) e uma restrição de temperatura máxima ($T_{max} = 200 °C$). O MPC respeita as restrições? O PID consegue? **Trilha SJ:** [ ] PID implementado, [ ] MPC implementado, [ ] horizonte N testado, [ ] gráficos comparativos, [ ] conclusão. **Entrega:** Link do Google Colab. Prazo: 7 dias. ---

---

## Aula 17 — Manutenção Preditiva e RUL

**M4 — Otimização, Controle e Confiabilidade** · 100 min

**Objetivo.** Capacitar o aluno a implementar modelos de predição de falhas e estimativa de RUL usando dados históricos de degradação de equipamentos — migrando de manutenção corretiva (quebra) e preventiva (calendário) para **preditiva (baseada em condição)**.

| Recurso | Onde |
|---|---|
| Notebook | [`aula17_rul.ipynb`](../notebooks/aula17_rul.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula17_rul.ipynb) |
| Dados | `aula17/` — 2 arquivos |
| Apresentação | [pptx](../slides/Aula_17_Manutencao.pptx) · [pdf](../slides/pdf/Aula_17_Manutencao.pdf) |
| Bloom | Lembrar → Analisar |

**Sequência didática.**

1. Abertura (10 min) — Trocar Cedo ou Tarde?
1. Teoria (25 min) — RUL: Quanto Tempo Antes da Falha?
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Se a incrustação acelera com o tempo (não-linear), um modelo linear de degradação subestima ou superestima a RUL? Qual o risco financeiro de cada erro?*

**Tarefa pós-aula.** Você recebeu dados de **vibração de uma bomba centrífuga** (6 meses até a falha). Features: RMS de vibração (mm/s), temperatura do mancal, vazão. Treine **3 modelos** para predizer RUL: 1. Regressão Linear simples (RUL = f(tempo)) 2. XGBoost (RUL = f(tempo, vibração, temp, vazão)) 3. LSTM (sequência dos últimos 30 dias) Compare MAE. **Qual modelo funciona melhor com degradação não-linear?** (a vibração acelera perto da falha) **Trilha NT:** Calcule o **intervalo de confiança de 95%** para cada predição de RUL (boostrap com 100 amostras).

---

## Aula 18 — Detecção e Diagnóstico de Anomalias

**M4 — Otimização, Controle e Confiabilidade** · 100 min

**Objetivo.** Capacitar o aluno a implementar detectores de anomalia não-supervisionados — aprendendo o que é "normal" sem dados rotulados de falha — computar score de anomalia e calibrar um threshold, avaliar o desempenho via matriz de confusão, e diagnosticar os 4 tipos de falha mais comuns em um reator químico, equilibrando sensibilidade e especificidade.

| Recurso | Onde |
|---|---|
| Notebook | [`aula18_anomalias.ipynb`](../notebooks/aula18_anomalias.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula18_anomalias.ipynb) |
| Dados | `aula18/` — 2 arquivos |
| Apresentação | [pptx](../slides/Aula_18_Anomalias.pptx) · [pdf](../slides/pdf/Aula_18_Anomalias.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — A Agulha no Palheiro de 10.000 Sensores
1. Teoria (25 min) — Três Formas de Detectar o Diferente
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *1% de alarmes falsos em 10.000 sensores = 100 alarmes/dia. O operador vai ignorar todos em uma semana. Mas se o threshold for alto demais para evitar os falsos alarmes, uma falha real passa despercebida. Como calibrar o threshold sem ter dados rotulados?*

**Tarefa pós-aula.** Usando o dataset `reator_troca_calor.csv` (2 trocadores + reator, 30 dias), treine PCA, Isolation Forest e Autoencoder aprendendo apenas dados normais. Injete sinteticamente 4 falhas conhecidas (válvula presa, drift de sensor, fouling, desativação de catalisador) e avalie o F1-score de cada detector por tipo de falha. **Trilha NT:** Calibre o threshold de cada detector minimizando o custo total (defina funções de custo: falso negativo = 10× o falso positivo) e reporte o custo operacional esperado para cada configuração.

---

## Aula 19 — Interpretabilidade e Explicabilidade (XAI)

**M5 — Ciclo de Vida do Modelo** · 100 min

**Objetivo.** Capacitar o aluno a abrir a "caixa-preta" de um modelo de ML com ferramentas de Explainable AI (XAI) — respondendo **"por que o modelo fez esta predição?"** em nível global e local — e a usar a física do processo como árbitro final: se o SHAP não concordar com a termodinâmica (ex.: sinal da temperatura em um reator), o aluno deve saber diagnosticar e corrigir (overfitting, data leakage, multicolinearidade, interações não-óbvias).

| Recurso | Onde |
|---|---|
| Notebook | [`aula19_xai.ipynb`](../notebooks/aula19_xai.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula19_xai.ipynb) |
| Dados | `aula19/cstr_exotermico_xai.csv` |
| Apresentação | [pptx](../slides/Aula_19_XAI.pptx) · [pdf](../slides/pdf/Aula_19_XAI.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Por que o Modelo Disse Isso?
1. Teoria (25 min) — Importância Global e SHAP Local
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** Produza um **relatório SHAP completo** para o modelo XGBoost da **coluna de destilação** (`coluna_destilacao_30dias.csv`, pureza do destilado a partir de `[R_refluxo, T_top, P_coluna, vazao_alim]`): 1. **Summary plot** — ranking global e direção de cada feature 2. **Dependence plot** de 3 features (T_top, R_refluxo, vazao_alim) 3. **Waterfall plot** de 2 predições: uma certa (erro < 2%) e uma errada (erro 5%) 4. **Conclusão de consistência física:** o sinal do SHAP de cada feature concorda com a destilação (ex.: R_refluxo alto → maior pureza → SHAP positivo)? 5. **Diagnóstico:** se alguma […]

---

## Aula 20 — Gêmeos Digitais, IIoT e IA Generativa

**M5 — Ciclo de Vida do Modelo** · 100 min

**Objetivo.** Capacitar o aluno a projetar conceitualmente um gêmeo digital de um processo químico (trocador de calor ou reator) — desenhando a arquitetura sensores → edge → nuvem → modelo, escolhendo protocolos IIoT, definindo critérios de validação por drift e usando LLMs como assistentes de diagnóstico e documentação de engenharia.

| Recurso | Onde |
|---|---|
| Notebook | [`aula20_twin_iiot.ipynb`](../notebooks/aula20_twin_iiot.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula20_twin_iiot.ipynb) |
| Dados | `aula20/trocador_e101_24h.csv` |
| Apresentação | [pptx](../slides/Aula_20_IIoT.pptx) · [pdf](../slides/pdf/Aula_20_IIoT.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — O Espelho Digital da Planta
1. Teoria (25 min) — Arquitetura de um Gêmeo Digital
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Um twin não é uma cópia perfeita — é um modelo que se atualiza com dados em tempo real. Se a planta e o twin discordam por mais de 5% por mais de 1 h, quem está errado: o sensor, o modelo ou a planta? Como decidir se o twin precisa ser retreinado?*

**Tarefa pós-aula.** Produza um **documento de 1 página** propondo um gêmeo digital para um processo de sua escolha (reator CSTR da Aula 5, coluna de destilação da Aula 8, trocador E-101 da Aula 12/17, etc.). Inclua: - **Diagrama** da arquitetura: sensores → edge → nuvem → modelo → ação - **Sensores** — grandezas, range e protocolo (OPC-UA / MQTT) - **Modelo** do twin (ML / híbrido / primeiros princípios) e justificativa - **Frequência** de atualização e retreino - **Benefício estimado** (redução de parada, energia, manutenção) - **Validação** — limiar de drift (θ e τ) e o que dispara a ação **Trilha NT:** Inclua […]

---

## Aula 21 — Desafios de Implantação e Governança de IA

**M5 — Ciclo de Vida do Modelo** · 100 min

**Objetivo.** Capacitar o aluno a conduzir um modelo de ML do protótipo validado até a operação industrial, antecipando e mitigando as barreiras técnicas, econômicas e organizacionais — qualidade de dados, conectividade e legado — por meio de um plano de implantação em 4 fases, de uma análise de ROI realista e de um framework de governança que garanta aprovação, retreino e rollback seguros.

| Recurso | Onde |
|---|---|
| Notebook | [`aula21_implantacao.ipynb`](../notebooks/aula21_implantacao.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula21_implantacao.ipynb) |
| Dados | `aula21/shadow_test_composicao.csv` |
| Apresentação | [pptx](../slides/Aula_21_Governanca.pptx) · [pdf](../slides/pdf/Aula_21_Governanca.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — O Modelo Não Implanta Sozinho
1. Teoria (25 min) — As Quatro Muralhas da Implantação
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar) — Plano de Implantação de 1 Página

**Pergunta-desafio.** *Custo do retreino mensal = R$ 5.000. Benefício = R$ 3.000/mês. O projeto é viável? O que está faltando nessa conta?*

**Tarefa pós-aula.** Elabore um **plano de implantação de 1 página** para um modelo de sua escolha (ex.: predição de ponto de fulgor, soft-sensor de viscosidade, MPC assistido por ML). Inclua, obrigatoriamente: 1. **As 4 fases** com risco e mitigação de cada uma 2. **Análise de ROI** em 3 cenários (otimista: 20% de redução de variabilidade; realista: 10%; pessimista: 5%) — assuma produção, preço e custos e apresente os cálculos 3. **Framework de governança**: quem aprova, frequência de retreino, e o plano de rollback com estratégia **champion/challenger** 4. **Critérios de sucesso** mensuráveis para cada fase […]

---

## Aula 22 — Ética, Segurança Industrial e Responsabilidade

**M5 — Ciclo de Vida do Modelo** · 100 min

**Objetivo.** Capacitar o aluno a reconhecer e mitigar vieses em dados de processo, posicionar a IA dentro da hierarquia de controle de riscos, proteger dados operacionais (OT/ICS) e empregar um framework ético (transparência, responsabilidade, robustez) para decidir quem responde por decisões automatizadas — onde um erro de modelo pode causar acidentes ambientais.

| Recurso | Onde |
|---|---|
| Notebook | [`aula22_etica.ipynb`](../notebooks/aula22_etica.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula22_etica.ipynb) |
| Dados | `aula22/torre_resfriamento_12m.csv` |
| Apresentação | [pptx](../slides/Aula_22_Etica.pptx) · [pdf](../slides/pdf/Aula_22_Etica.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Quem Assina a Responsabilidade?
1. Teoria (25 min) — Viés, Riscos e Ética
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Quem assina a ART (Anotação de Responsabilidade Técnica) do modelo de IA? O engenheiro de dados, o de processos, ou o gerente da planta? Soa estranho, não? Na engenharia, sempre alguém assina.*

**Tarefa pós-aula.** Redija um parágrafo de **"Política de Uso de IA"** para uma planta química, respondendo: quando o modelo decide sozinho? Quando o humano valida? Quem assina a responsabilidade? Que barreiras de segurança protegem a operação? Fundamente na hierarquia de controle de riscos e no framework ético (transparência, responsabilidade, robustez). **Trilha NT:** Desenhe um **fluxograma de decisão** para exceções — modelo sugere → operador valida → supervisor autoriza → registro em log. Inclua o caso do modelo que pede interromper a coluna de destilação.

---

## Aula 23 — O Engenheiro Químico do Futuro

**M5 — Ciclo de Vida do Modelo** · 100 min

**Objetivo.** Capacitar o aluno a traçar um plano de desenvolvimento profissional realista e executável — posicionando-se frente às tendências tecnológicas e mapeando as competências (técnicas e comportamentais) necessárias para integrar IA e Engenharia Química ao longo da carreira.

| Recurso | Onde |
|---|---|
| Notebook | [`aula23_futuro.ipynb`](../notebooks/aula23_futuro.ipynb) · [abrir no Colab](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula23_futuro.ipynb) |
| Dados | — (discussão, sem dados) |
| Apresentação | [pptx](../slides/Aula_23_Futuro.pptx) · [pdf](../slides/pdf/Aula_23_Futuro.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — O Engenheiro Químico de Amanhã Já Está Sendo Formado Hoje
1. Teoria (25 min) — Tendências, Perfil T-Shaped e o Kit de Ferramentas do Futuro
1. Prática (40 min)
1. Discussão e Fechamento (15 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *O EQ que sabe IA vai substituir o que não sabe? Ou a IA vai ampliar a demanda por engenheiros químicos?*

**Tarefa pós-aula.** Escreva uma **Carta para si mesmo (daqui a 12 meses)**: "Hoje eu sei ____. Em 12 meses quero saber ____. Para isso vou ____." Anexe seu radar de competências atual e liste **3 marcos mensais** para os primeiros 3 meses. **Trilha NT:** Pesquise **3 vagas reais de EQ + IA** no LinkedIn/Glassdoor. Liste as **habilidades pedidas em comum**.

---

## Aula 24 — Checkpoint e Mentoria do Projeto Prático

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Oferecer mentoria personalizada equipe a equipe — validar a definição do problema, a qualidade e suficiência dos dados, o baseline, o diagnóstico de overfitting e os próximos passos — destravando dificuldades técnicas e realinhando o cronograma rumo à entrega final (Etapa 2 + Apresentação nas Aulas 29-30).

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_24_Mentoria.pptx) · [pdf](../slides/pdf/Aula_24_Mentoria.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Dia de Destravar o Projeto
1. Trabalho Guiado / Mentoria Coletiva (20 min) — O Checklist de Diagnóstico
1. Rodadas de Mentoria (50 min — 5 equipes × 10 min)
1. Discussão (10 min)
1. Fechamento e Tarefa (10 min)

**Pergunta-desafio.** *O objetivo de hoje não é 'ver quem está adiantado' — é descobrir o que está travando cada equipe e destravar. Um projeto travado em dados é diferente de um travado em modelo: o segundo é mais fácil de resolver. Qual destravamos primeiro?*

---

## Aula 25 — Oficina de Desenvolvimento I

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Garantir, sob supervisão do professor, que todas as equipes concluam as etapas de preparação de dados (limpeza, EDA final, features) e treinem um primeiro modelo baseline com métrica documentada — desbloqueando avanços, corrigindo erros de abordagem em tempo real e validando o progresso individual de cada equipe rumo ao Projeto Integrador final.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_25_OficinaI.pptx) · [pdf](../slides/pdf/Aula_25_OficinaI.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Meta da Oficina e Organização das Equipes
1. Trabalho Guiado — Limpeza de Dados e EDA Final (30 min)
1. Feature Engineering + Baseline com Mentoria Individual (40 min)
1. Discussão (15 min) — Checkpoint das Equipes
1. Fechamento e Tarefa (5 min)

---

## Aula 26 — Oficina de Desenvolvimento II

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Prover tempo supervisionado para as equipes treinarem e refinarem seus modelos do Projeto Integrador — com mentoria focada em validação cruzada (k-fold), diagnóstico e correção de overfitting/underfitting, refinamento de hiperparâmetros e comparação justa de arquiteturas contra o baseline da Aula 25.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_26_OficinaII.pptx) · [pdf](../slides/pdf/Aula_26_OficinaII.pdf) |
| Bloom | Aplicar → Avaliar |

**Sequência didática.**

1. Abertura (10 min) — Bater o Baseline
1. Treinamento e Validação Cruzada (30 min) — Bloom: Aplicar
1. Diagnóstico e Refinamento + Mentoria (35 min) — Bloom: Analisar e Avaliar
1. Discussão (13 min) — Comunitário e Avaliativo
1. Fechamento e Tarefa (12 min) — Bloom: Avaliar/Criar

**Pergunta-desafio.** *Um modelo com RMSE de treino muito baixo e RMSE de teste alto: ele é bom ou ruim? POR QUE o primeiro engana?*

---

## Aula 27 — Consolidação dos Resultados do Projeto Integrador

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Capacitar cada equipe a transformar notebooks técnicos em um relatório executivo claro e persuasivo — comunicando o valor do modelo construído para audiências não-técnicas (gerentes, operadores, diretoria) e preparando a apresentação final das Aulas 28–29.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_27_Consolidacao.pptx) · [pdf](../slides/pdf/Aula_27_Consolidacao.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Do Notebook ao Quarto da Diretoria
1. Análise Crítica e Consolidação (20 min) — Vale a Pena Contar Essa História?
1. Relatório Executivo (Prática) (45 min) — Produção em Oficina
1. Discussão (15 min) — Compartilhando o Valor
1. Fechamento e Tarefa (10 min) — Entregáveis Fechados

**Pergunta-desafio.** *O gestor pergunta: 'o modelo melhorou o rendimento ou só previu melhor?'. Como você mostra o VALOR entregue — não apenas a acurácia — com os dados que você já tem?*

---

## Aula 28 — Ensaio e Ajustes de Apresentação

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Capacitar as equipes a entregar uma apresentação final clara, tecnicamente sólida e no tempo — ensaiando o pitch cronometrado, recebendo feedback estruturado (clareza, profundidade, slides, tempo) e realizando os ajustes finais no deck e no roteiro de fala.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_28_Ensaio.pptx) · [pdf](../slides/pdf/Aula_28_Ensaio.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — O Ensaio como Ensaio Geral da Apresentação Final
1. Roteiro de Apresentação (15 min) — Teoria da Comunicação Técnica
1. Ensaio Cronometrado (60 min) — 5 Equipes × 12 min de Pitch
1. Feedback e Discussão (15 min) — Avaliar e Refinar
1. Fechamento e Ajustes (20 min) — Criar a Versão Final
1. Tarefa Pós-Aula (Bloom: Criar)

**Pergunta-desafio.** *Um pitch excelente em slide pode falhar em 12 minutos. O que transforma um bom conteúdo em uma boa apresentação? E o reverso: um conteúdo raso pode sobreviver a perguntas difíceis?*

**Tarefa pós-aula.** Com o feedback recebido no ensaio, finalize o deck e o roteiro: (1) reescreva os slides que quebraram a rubrica; (2) revise a distribuição dos 12 min por seção (abertura ≤ 1 min, método ≤ 4 min, resultados ≤ 4 min, conclusão ≤ 2 min, perguntas ≤ 2 min); (3) anote as respostas às perguntas que a banca fez; (4) ensaie o pitch individualmente, cronometrando, pelo menos 2 vezes. **Trilha NT:** Prepare a resposta profunda a 3 perguntas desafiadoras: *validação do modelo*, *generalização a novos dados/condições da planta* e *custo-benefício de implantação e manutenção*.

---

## Aula 29 — Apresentações Finais I

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Avaliar a capacidade das equipes de comunicar seus projetos de IA aplicada à Engenharia Química — demonstrando clareza, profundidade técnica e análise crítica dos resultados — e dar feedback formativo que oriente as equipes restantes e o refinamento final.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_29_ApresentacoesI.pptx) · [pdf](../slides/pdf/Aula_29_ApresentacoesI.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (10 min) — Critérios e Logística
1. Seminário — Equipe A (28 min)
1. Seminário — Equipe B (28 min)
1. Seminário — Equipe C (28 min)
1. Encerramento do dia (6 min)
1. Tarefa Pós-Aula (Bloom: Criar)

**Tarefa pós-aula.** - Equipes que já apresentaram: enviar a **versão final** dos slides e do notebook até o prazo combinado, incorporando o feedback recebido. - Equipes que ainda não apresentaram: revisar os slides com base nos **critérios da rubrica** e no feedback observado nas apresentações de hoje. - **Trilha NT (todos):** preparar 2 perguntas críticas ("por que escolheu X?" / "qual a limitação de Y?") para a banca da Aula 30. - **Trilha SJ (todos):** checar a lista: [ ] slides revisados pela rubrica, [ ] tempo ≤ 15 min, [ ] notebook executável e entregue, [ ] relatório com análise crítica.

---

## Aula 30 — Apresentações Finais II e Encerramento do Curso

**M6 — Projeto Integrador** · 100 min

**Objetivo.** Concluir as defesas dos projetos finais das equipes D e E, avaliar as apresentações com uma rubrica transparente, premiar simbolicamente os destaques, colher depoimentos que consolidam a jornada de 30 aulas e fechar o curso com uma reflexão sobre o papel do engenheiro químico na era da IA.

| Recurso | Onde |
|---|---|
| Apresentação | [pptx](../slides/Aula_30_Encerramento.pptx) · [pdf](../slides/pdf/Aula_30_Encerramento.pdf) |
| Bloom | Lembrar → Criar |

**Sequência didática.**

1. Abertura (5 min) — Fechando o Círculo das 30 Aulas
1. Seminário — Equipe D (30 min) — Bloom: Aplicar e Avaliar
1. Seminário — Equipe E (30 min) — Bloom: Aplicar e Avaliar
1. Premiação e Roda de Depoimentos (20 min) — Bloom: Avaliar e Criar
1. Encerramento do Curso (15 min)

**Pergunta-desafio.** *para a plateia: **

---
