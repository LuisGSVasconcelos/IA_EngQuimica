# 🤖 IA Aplicada à Engenharia Química

**Disciplina de pós-graduação (PPGEQ/UFCG)** — 30 aulas · 100 min cada
Dados sintéticos + notebooks prontos para **Google Colab**, alinhados aos planos de aula.

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
└── notebooks/                 # Notebooks .ipynb prontos para Colab
    ├── aula01_exercicio.ipynb …
    └── LabN_*_(Template/Gabarito).ipynb   # Laboratórios
```

---

## 📊 Índice das 30 Aulas

### Módulo 1 — Fundamentos e Dados

| # | Tema | Dataset | Colab |
|---|------|---------|-------|
| 01 | Introdução à IA na EQ | `aula01/coluna_destilacao_24h.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula01_exercicio.ipynb) |
| 02 | Estrutura e Tratamento de Dados Industriais | `aula02/` (5 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula02_limpeza.ipynb) |
| 03 | Engenharia de Features Industriais | `aula03/` (4 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula03_features.ipynb) |
| 04 | Análise Exploratória e Visualização | `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula04_eda.ipynb) |

### Módulo 2 — Aprendizado de Máquina

| # | Tema | Dataset | Colab |
|---|------|---------|-------|
| 05 | ML Supervisionado | `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula05_ml_supervisionado.ipynb) |
| 06 | Avaliação e Validação de Modelos | `aula06/` (4 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula06_validacao.ipynb) |
| 07 | Conceito e Projeto de Soft-Sensors | `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula07_soft_sensors.ipynb) |
| 08 | **Lab 1** Soft-Sensor | `aula04/coluna_destilacao_30dias.csv` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab1_SoftSensor_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab1_SoftSensor_Gabarito.ipynb) |
| 09 | Introdução a Redes Neurais | `aula04/coluna_destilacao_30dias.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula09_redes_neurais.ipynb) |
| 10 | **Lab 2** Redes Neurais (Keras) | `aula10/reator_rendimento.csv` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab2_MLP_Keras_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab2_MLP_Keras_Gabarito.ipynb) |
| 11 | Modelagem Híbrida (Caixa-Cinza) | `aula11/` (3 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula11_hibrido.ipynb) |
| 12 | **Lab 3** Modelo Híbrido | `aula11/` | [Template](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab3_Hibrido_Template.ipynb) / [Gabarito](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/Lab3_Hibrido_Gabarito.ipynb) |

### Módulo 3 — Modelagem Dinâmica

| # | Tema | Dataset | Colab |
|---|------|---------|-------|
| 13 | Dinâmica de Processos e Séries Temporais | `aula13/reator_dinamico.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula13_dinamica.ipynb) |
| 14 | LSTM para Predição Dinâmica | `aula13/reator_dinamico.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula14_lstm.ipynb) |

### Módulo 4 — Otimização, Controle e Confiabilidade

| # | Tema | Dataset | Colab |
|---|------|---------|-------|
| 15 | Otimização de Processos com IA | `aula15/cstr_rendimento.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula15_otimizacao.ipynb) |
| 16 | Controle Avançado (MPC) | `aula16/reator_fopdt_openloop.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula16_mpc.ipynb) |
| 17 | Manutenção Preditiva e RUL | `aula17/` (2 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula17_rul.ipynb) |
| 18 | Detecção de Anomalias | `aula18/` (2 datasets) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula18_anomalias.ipynb) |

### Módulo 5 — IA no Ciclo de Vida do Modelo

| # | Tema | Dataset | Colab |
|---|------|---------|-------|
| 19 | Interpretabilidade e Explicabilidade (XAI) | `aula19/cstr_exotermico_xai.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula19_xai.ipynb) |
| 20 | Gêmeos Digitais, IIoT e LLM | `aula20/trocador_e101_24h.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula20_twin_iiot.ipynb) |
| 21 | Implantação e Governança | `aula21/shadow_test_composicao.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula21_implantacao.ipynb) |
| 22 | Ética, Segurança Industrial e Responsabilidade | `aula22/torre_resfriamento_12m.csv` | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula22_etica.ipynb) |
| 23 | O Engenheiro Químico do Futuro | — (radar de competências) | [abrir](https://colab.research.google.com/github/LuisGSVasconcelos/IA_EngQuimica/blob/main/notebooks/aula23_futuro.ipynb) |

### Módulo 6 — Projeto Integrador (Oficinas e Apresentações)

| # | Tema | Formato |
|---|------|---------|
| 24 | Checkpoint e Mentoria do Projeto | Oficina (checklist de diagnóstico) |
| 25 | Oficina de Desenvolvimento I (dados + baseline) | Oficina guiada |
| 26 | Oficina de Desenvolvimento II (CV + overfitting) | Oficina guiada |
| 27 | Consolidação dos Resultados | Relatório executivo |
| 28 | Ensaio e Ajustes de Apresentação | Pitch de 12 min |
| 29 | Apresentações Finais I | Seminários (E1–E3) |
| 30 | Apresentações Finais II e Encerramento | Seminários (D/E) + premiação |

> **Nota:** As aulas **24–30** são oficinas/orientação: usam os próprios projetos das equipes,
> por isso não há datasets técnicos no GitHub — os slides, roteiros e rubricas são materiais locais do professor.

---

## 🔗 Padrão de URL raw dos dados

```
https://raw.githubusercontent.com/LuisGSVasconcelos/IA_EngQuimica/main/dados/aulaNN/<arquivo>.csv
```

Os notebooks já embutem a URL correta — o aluno apenas **abre no Colab e executa**.

---

## 🎓 Como usar o curso

1. **Professores:** os notebooks prontos + gabaritos servem de base; datasets sintéticos são regeneráveis
   pelos scripts em pasta local de cada aula (seed fixa `42`).
2. **Alunos:** clique em **"abrir"** ao lado de cada aula → o notebook abre no Colab com os dados já carregados.
3. **Colab gratuito:** sem limite de acesso simultâneo; ~12 h por sessão; CPU padrão é suficiente.

---

## 🧪 Técnicas e ferramentas cobertas

- **Ferramentas:** pandas, scikit-learn, XGBoost, Keras/TensorFlow, SHAP, scipy.optimize
- **Métodos:** regressão, Random Forest, redes MLP/LSTM, modelagem híbrida, MPC, RUL,
  detecção de anomalias (PCA/Isolation Forest/Autoencoder), validação cruzada, drift (PSI)
- **Conceitos:** soft-sensors, gêmeos digitais, champion/challenger, MLOps, ética e governança

---

## 📦 Datasets (24 arquivos, seed 42)

| Aula | Arquivos | Descrição |
|------|----------|-----------|
| 01 | `coluna_destilacao_24h.csv` | Coluna de destilação (2880 pts) |
| 02 | `trocador_calor_24h_sujo.csv`, variantes A–D | Qualidade de dados (NaN, outliers, ruído, drift) |
| 03 | `cstr_lab_10min`, `cstr_processo_1min`, `trocador_calor_features`, `trocador_U_semanal` | Feature engineering |
| 04 | `coluna_destilacao_30dias.csv` + 4 semanas | Base central das Aulas 04–08 |
| 06 | `cenario_A/B/C`, `cstr_features` | Validação (over/underfitting) |
| 10 | `reator_rendimento.csv` | Rendimento de CSTR (20 000 pts) |
| 11 | `cstr_hibrido`, `*_extrapolacao`, `trocador_hibrido` | Modelagem híbrida |
| 13 | `reator_dinamico.csv` | FOPDT (τ=10, θ=5) |
| 15 | `cstr_rendimento.csv` | Superfície com ótimo real |
| 16 | `reator_fopdt_openloop.csv` | MPC |
| 17 | `trocador_degradacao`, `bomba_vibracao` | RUL |
| 18 | `reator_4falhas`, `reator_troca_calor` | Anomalias |
| 19 | `cstr_exotermico_xai.csv` | XAI/SHAP |
| 20 | `trocador_e101_24h.csv` | Gêmeo digital / drift |
| 21 | `shadow_test_composicao.csv` | Champion/challenger |
| 22 | `torre_resfriamento_12m.csv` | Viés/sazonalidade (PSI) |

---

## 📚 Disciplina

**IA Aplicada à Engenharia Química** · PPGEQ/UFCG
Professor: **Luis Gonzaga Sales Vasconcelos**

_Repositório de apoio didático — dados 100% sintéticos gerados com seed fixa para reprodutibilidade._