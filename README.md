# 🤖 IA Aplicada à Engenharia Química

**Disciplina de graduação (UAEQ/UFCG)** — 30 aulas · 100 min cada
Dados sintéticos + notebooks prontos para **Google Colab**, alinhados aos planos de aula.

[![Código: MIT](https://img.shields.io/badge/c%C3%B3digo-MIT-22c55e)](LICENSE)
[![Dados: CC BY 4.0](https://img.shields.io/badge/dados-CC%20BY%204.0-blue)](dados/LICENSE)
[![Conteúdo: CC BY-NC-SA 4.0](https://img.shields.io/badge/conte%C3%BAdo-CC%20BY--NC--SA%204.0-orange)](LICENSE-CONTEUDO.md)

> Este repositório centraliza **datasets sintéticos** (`dados/`) e **notebooks** (`notebooks/`)
> da disciplina. Cada aula inclui também, em pasta local do professor, slides, diagramas
> e (quando aplicável) gabaritos. Os alunos **não baixam nada**: os notebooks carregam os
> dados diretamente via URL raw do GitHub.

---

## 🗂️ Estrutura do repositório

```
IA_EngQuimica/
├── dados/                     # Datasets sintéticos (seed fixa 42)
│   ├── aula01/ … aula22/      # 1 pasta por aula técnica
├── notebooks/                 # Notebooks .ipynb prontos para Colab
│   ├── aula01_exercicio.ipynb …
│   └── LabN_*_(Template/Gabarito).ipynb   # Laboratórios
└── slides/                    # Apresentações .pptx (27 decks, 265 slides)
    ├── Aula_01_*.pptx … Aula_30_*.pptx    # aulas 08, 10 e 12 não têm deck (são labs)
    └── pdf/                   # as mesmas 27 apresentações em PDF (para projetar)
```

---

## 📊 Índice das 30 Aulas

### Módulo 1 — Fundamentos e Dados

| # | Tema | Dataset | Colab | Slides |
|---|------|---------|-------|--------|
| 01 | Introdução à IA na EQ | `aula01/coluna_destilacao_24h.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula01_exercicio.ipynb) | [pptx](slides/Aula_01_Introducao_IA_EngQuimica.pptx) · [pdf](slides/pdf/Aula_01_Introducao_IA_EngQuimica.pdf) |
| 02 | Estrutura e Tratamento de Dados Industriais | `aula02/` (5 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula02_limpeza.ipynb) | [pptx](slides/Aula_02_Tratamento_Dados_Industriais.pptx) · [pdf](slides/pdf/Aula_02_Tratamento_Dados_Industriais.pdf) |
| 03 | Engenharia de Features Industriais | `aula03/` (4 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula03_features.ipynb) | [pptx](slides/Aula_03_Features_Industriais.pptx) · [pdf](slides/pdf/Aula_03_Features_Industriais.pdf) |
| 04 | Análise Exploratória e Visualização | `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula04_eda.ipynb) | [pptx](slides/Aula_04_EDA.pptx) · [pdf](slides/pdf/Aula_04_EDA.pdf) |

### Módulo 2 — Aprendizado de Máquina

| # | Tema | Dataset | Colab | Slides |
|---|------|---------|-------|--------|
| 05 | ML Supervisionado | ↺ `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula05_ml_supervisionado.ipynb) | [pptx](slides/Aula_05_ML_Supervisionado.pptx) · [pdf](slides/pdf/Aula_05_ML_Supervisionado.pdf) |
| 06 | Avaliação e Validação de Modelos | `aula06/` (4 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula06_validacao.ipynb) | [pptx](slides/Aula_06_Validacao.pptx) · [pdf](slides/pdf/Aula_06_Validacao.pdf) |
| 07 | Conceito e Projeto de Soft-Sensors | ↺ `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula07_soft_sensors.ipynb) | [pptx](slides/Aula_07_Soft_Sensors.pptx) · [pdf](slides/pdf/Aula_07_Soft_Sensors.pdf) |
| 08 | **Lab 1** Soft-Sensor | ↺ `aula04/coluna_destilacao_30dias.csv` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab1_SoftSensor_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab1_SoftSensor_Gabarito.ipynb) | — (lab em notebook) |
| 09 | Introdução a Redes Neurais | ↺ `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula09_redes_neurais.ipynb) | [pptx](slides/Aula_09_Redes_Neurais.pptx) · [pdf](slides/pdf/Aula_09_Redes_Neurais.pdf) |
| 10 | **Lab 2** Redes Neurais (Keras) | `aula10/reator_rendimento.csv` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab2_MLP_Keras_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab2_MLP_Keras_Gabarito.ipynb) | — (lab em notebook) |
| 11 | Modelagem Híbrida (Caixa-Cinza) | `aula11/` (3 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula11_hibrido.ipynb) | [pptx](slides/Aula_11_Hibrido.pptx) · [pdf](slides/pdf/Aula_11_Hibrido.pdf) |
| 12 | **Lab 3** Modelo Híbrido | ↺ `aula11/cstr_hibrido.csv` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab3_Hibrido_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab3_Hibrido_Gabarito.ipynb) | — (lab em notebook) |

### Módulo 3 — Modelagem Dinâmica

| # | Tema | Dataset | Colab | Slides |
|---|------|---------|-------|--------|
| 13 | Dinâmica de Processos e Séries Temporais | `aula13/reator_dinamico.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula13_dinamica.ipynb) | [pptx](slides/Aula_13_Dinamica.pptx) · [pdf](slides/pdf/Aula_13_Dinamica.pdf) |
| 14 | LSTM para Predição Dinâmica | ↺ `aula13/reator_dinamico.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula14_lstm.ipynb) | [pptx](slides/Aula_14_LSTM.pptx) · [pdf](slides/pdf/Aula_14_LSTM.pdf) |

### Módulo 4 — Otimização, Controle e Confiabilidade

| # | Tema | Dataset | Colab | Slides |
|---|------|---------|-------|--------|
| 15 | Otimização de Processos com IA | `aula15/cstr_rendimento.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula15_otimizacao.ipynb) | [pptx](slides/Aula_15_Otimizacao.pptx) · [pdf](slides/pdf/Aula_15_Otimizacao.pdf) |
| 16 | Controle Avançado (MPC) | — (FOPDT simulado no notebook) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula16_mpc.ipynb) | [pptx](slides/Aula_16_MPC.pptx) · [pdf](slides/pdf/Aula_16_MPC.pdf) |
| 17 | Manutenção Preditiva e RUL | `aula17/` (2 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula17_rul.ipynb) | [pptx](slides/Aula_17_Manutencao.pptx) · [pdf](slides/pdf/Aula_17_Manutencao.pdf) |
| 18 | Detecção de Anomalias | `aula18/` (2 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula18_anomalias.ipynb) | [pptx](slides/Aula_18_Anomalias.pptx) · [pdf](slides/pdf/Aula_18_Anomalias.pdf) |

### Módulo 5 — IA no Ciclo de Vida do Modelo

| # | Tema | Dataset | Colab | Slides |
|---|------|---------|-------|--------|
| 19 | Interpretabilidade e Explicabilidade (XAI) | `aula19/cstr_exotermico_xai.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula19_xai.ipynb) | [pptx](slides/Aula_19_XAI.pptx) · [pdf](slides/pdf/Aula_19_XAI.pdf) |
| 20 | Gêmeos Digitais, IIoT e LLM | `aula20/trocador_e101_24h.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula20_twin_iiot.ipynb) | [pptx](slides/Aula_20_IIoT.pptx) · [pdf](slides/pdf/Aula_20_IIoT.pdf) |
| 21 | Implantação e Governança | `aula21/shadow_test_composicao.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula21_implantacao.ipynb) | [pptx](slides/Aula_21_Governanca.pptx) · [pdf](slides/pdf/Aula_21_Governanca.pdf) |
| 22 | Ética, Segurança Industrial e Responsabilidade | `aula22/torre_resfriamento_12m.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula22_etica.ipynb) | [pptx](slides/Aula_22_Etica.pptx) · [pdf](slides/pdf/Aula_22_Etica.pdf) |
| 23 | O Engenheiro Químico do Futuro | — (radar de competências) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula23_futuro.ipynb) | [pptx](slides/Aula_23_Futuro.pptx) · [pdf](slides/pdf/Aula_23_Futuro.pdf) |

### Módulo 6 — Projeto Integrador (Oficinas e Apresentações)

| # | Tema | Formato | Slides |
|---|------|---------|--------|
| 24 | Checkpoint e Mentoria do Projeto | Oficina (checklist de diagnóstico) | [pptx](slides/Aula_24_Mentoria.pptx) · [pdf](slides/pdf/Aula_24_Mentoria.pdf) |
| 25 | Oficina de Desenvolvimento I (dados + baseline) | Oficina guiada | [pptx](slides/Aula_25_OficinaI.pptx) · [pdf](slides/pdf/Aula_25_OficinaI.pdf) |
| 26 | Oficina de Desenvolvimento II (CV + overfitting) | Oficina guiada | [pptx](slides/Aula_26_OficinaII.pptx) · [pdf](slides/pdf/Aula_26_OficinaII.pdf) |
| 27 | Consolidação dos Resultados | Relatório executivo | [pptx](slides/Aula_27_Consolidacao.pptx) · [pdf](slides/pdf/Aula_27_Consolidacao.pdf) |
| 28 | Ensaio e Ajustes de Apresentação | Pitch de 12 min | [pptx](slides/Aula_28_Ensaio.pptx) · [pdf](slides/pdf/Aula_28_Ensaio.pdf) |
| 29 | Apresentações Finais I | Seminários (E1–E3) | [pptx](slides/Aula_29_ApresentacoesI.pptx) · [pdf](slides/pdf/Aula_29_ApresentacoesI.pdf) |
| 30 | Apresentações Finais II e Encerramento | Seminários (D/E) + premiação | [pptx](slides/Aula_30_Encerramento.pptx) · [pdf](slides/pdf/Aula_30_Encerramento.pdf) |

> **Nota:** As aulas **24–30** são oficinas/orientação: usam os próprios projetos das equipes,
> por isso não há datasets técnicos no GitHub — os slides estão em [`slides/`](slides/), e os
> roteiros e rubricas são materiais locais do professor.

---

## 🔗 Padrão de URL raw dos dados

```
https://raw.githubusercontent.com/LuisGSVasconcelos/IA_EngQuimica/main/dados/aulaNN/<arquivo>.csv
```

Os notebooks já embutem a URL correta — o aluno apenas **abre no Colab e executa**.

---

## 🎓 Como usar o curso

1. **Alunos:** clique em **"abrir"** ao lado de cada aula → o notebook abre no Colab com os dados já carregados. Nada é instalado na máquina do aluno.
2. **Colab gratuito:** ~12 h por sessão; a CPU padrão é suficiente — nenhum notebook exige GPU.

### Usando este material em outra instituição

O repositório foi desenhado para ser **reutilizado**, não apenas consultado:

| Se você quer… | Como fazer |
|---|---|
| Rodar uma aula isolada | Abra o notebook no Colab e execute. O setup leva ~2 min. |
| Ministrar o curso inteiro | Adote a sequência de 30 aulas: cada notebook traz objetivo, exercício guiado e tarefa pós-aula. |
| Levar seus próprios dados industriais | Substitua o `pd.read_csv(...)` da primeira célula; o resto do código é agnóstico ao dataset. Publique apenas dados anonimizados ou sintéticos. |
| Regenerar os datasets | Os geradores usam seed fixa `42` e ficam na pasta local de cada aula. Único ponto a trocar: a URL raw. |
| Ensinar sem internet estável | Clone o repositório e rode localmente — dependências na seção abaixo. |

**Dependências:** `pandas`, `numpy`, `matplotlib`, `seaborn`, `scikit-learn`, `xgboost`, `tensorflow`, `scipy`, `shap`.

**Pré-requisitos dos alunos:** lógica de programação básica e balanço de massa/energia. Não é exigido curso prévio de machine learning — o Módulo 2 constrói isso do zero.

---

## 🧪 Técnicas e ferramentas cobertas

- **Ferramentas:** pandas, scikit-learn, XGBoost, Keras/TensorFlow, SHAP, scipy.optimize
- **Métodos:** regressão, Random Forest, redes MLP/LSTM, modelagem híbrida, MPC, RUL,
  detecção de anomalias (PCA/Isolation Forest/Autoencoder), validação cruzada, drift (PSI)
- **Conceitos:** soft-sensors, gêmeos digitais, champion/challenger, MLOps, ética e governança

---

## 📦 Datasets (34 arquivos, seed 42)

> **↺ = reutiliza o dataset de uma aula anterior, de propósito.** As aulas 05, 07, 08 e 09
> trabalham sobre `aula04/coluna_destilacao_30dias.csv` — mesmo processo, tarefas cognitivas
> diferentes (regressão → validação → projeto de soft-sensor → rede neural). As aulas 12 e 14
> reutilizam `aula11/` e `aula13/` pelo mesmo motivo: quem troca de dataset a cada aula
> aprende ferramenta, não método.

| Aula | Arquivos | Descrição |
|------|----------|-----------|
| 01 | `coluna_destilacao_24h.csv` | Coluna de destilação (2880 pts) |
| 02 | `trocador_calor_24h_sujo.csv`, variantes A–D | Qualidade de dados (NaN, outliers, ruído, drift) |
| 03 | `cstr_lab_10min`, `cstr_processo_1min`, `trocador_calor_features`, `trocador_U_semanal` | Feature engineering |
| 04 | `coluna_destilacao_30dias.csv` + 4 semanas | Base central das Aulas 04, 05, 07, 08 e 09 |
| 06 | `cenario_A/B/C`, `cstr_features` | Validação (over/underfitting) |
| 10 | `reator_rendimento.csv` | Rendimento de CSTR (20 000 pts) |
| 11 | `cstr_hibrido`, `*_extrapolacao`, `trocador_hibrido` | Modelagem híbrida |
| 13 | `reator_dinamico.csv` | FOPDT (τ=10, θ=5) |
| 15 | `cstr_rendimento.csv` | Superfície com ótimo real |
| 16 | `reator_fopdt_openloop.csv` | MPC — apoio: degrau em F_alimentação → C_A (300 pts); o notebook simula o FOPDT inline |
| 17 | `trocador_degradacao`, `bomba_vibracao` | RUL |
| 18 | `reator_4falhas`, `reator_troca_calor` | Anomalias |
| 19 | `cstr_exotermico_xai.csv` | XAI/SHAP |
| 20 | `trocador_e101_24h.csv` | Gêmeo digital / drift |
| 21 | `shadow_test_composicao.csv` | Champion/challenger |
| 22 | `torre_resfriamento_12m.csv` | Viés/sazonalidade (PSI) |

---

## 📄 Licença e citação

Licenças diferentes por camada — código livre para reuso amplo, material didático protegido de uso comercial:

| Camada | O que cobre | Licença | Permite |
|---|---|---|---|
| **Código** | `notebooks/`, scripts | **MIT** — [`LICENSE`](LICENSE) | usar, modificar, redistribuir, inclusive comercialmente |
| **Dados** | `dados/` | **CC BY 4.0** — [`dados/LICENSE`](dados/LICENSE) | usar e redistribuir, com atribuição |
| **Conteúdo didático** | planos, ementa, rubricas, slides, diagramas | **CC BY-NC-SA 4.0** — [`LICENSE-CONTEUDO.md`](LICENSE-CONTEUDO.md) | adaptar para uso educacional, sem uso comercial, sob a mesma licença |

### Como citar

Se este material apoiar sua disciplina ou pesquisa (metadados completos em [`CITATION.cff`](CITATION.cff)):

> VASCONCELOS, L. G. S. **IA Aplicada à Engenharia Química: datasets sintéticos e notebooks**. Campina Grande: UFCG/UAEQ, 2026. Disponível em: https://github.com/LuisGSVasconcelos/IA_EngQuimica

**DOI:** ao criar uma *release* no GitHub e conectá-la ao Zenodo, o repositório passa a ter DOI versionado e citável — recomendável antes de submeter o material a qualquer avaliação institucional.

---

## 📚 Disciplina

**IA Aplicada à Engenharia Química** · UAEQ/UFCG
Professor: **Luis Gonzaga Sales Vasconcelos**

_Repositório de apoio didático — dados 100% sintéticos gerados com seed fixa para reprodutibilidade._
