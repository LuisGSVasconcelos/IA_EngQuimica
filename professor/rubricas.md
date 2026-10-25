# Rubricas de avaliação

Avaliação por **decisão**, não por acerto. Um modelo com R² pior e validação correta vale
mais que um R² alto obtido com vazamento de dados — e a rubrica precisa dizer isso em voz alta,
senão o aluno aprende o contrário.

> **Escala única para tudo.** Quatro níveis, mesma lógica em todos os instrumentos:
> **I** Insuficiente (0–39%) · **B** Básico (40–59%) · **P** Proficiente (60–79%) · **E** Exemplar (80–100%).
> A nota final de cada item é a média ponderada dos critérios.

---

## 1. Princípios que valem para todos os instrumentos

| Princípio | Como aparece na correção |
|---|---|
| **Justificativa vale mais que resultado** | "Usei Random Forest porque reduziu RMSE de 1,4 para 0,9" (P) vs. "usei Random Forest" (B) |
| **Faixa de validade é obrigatória** | Todo modelo entregue declara onde deixa de valer. Ausência disso trava o item em B, mesmo com métrica boa |
| **Erro diagnosticado é melhor que erro escondido** | Aluno que mostra o modelo falhando fora da faixa e explica por quê chega a E |
| **Reprodutibilidade conta** | Semente fixa, ordem das células executável, nenhum resultado "escrito à mão" |
| **Duas audiências** | Relatório executivo (gestão) e pitch (pares) avaliam coisas diferentes; não são o mesmo texto em tamanhos diferentes |

---

## 2. Laboratório 1 — Soft-sensor da coluna de destilação

Alvo declarado no notebook: **RMSE < 0,8 %** na composição. Roteiro de 10 células,
cada uma vale um item do checklist.

| Critério | I | B | P | E |
|---|---|---|---|---|
| **Dados e EDA** (cél. 1–2) | Não carrega ou não descreve | Carrega e mostra `head()` | Descreve distribuição e identifica problema | Relaciona a anomalia ao fenômeno de processo |
| **Limpeza e features** (cél. 3–4) | Sem tratamento | Trata NaN e outlier | Justifica o método e cria features com sentido físico | Testa alternativa e mostra o efeito na métrica |
| **Modelagem** (cél. 5–7) | Um modelo sem justificativa | Compara dois modelos | Compara e escolhe por validação adequada | Discute o que cada modelo captura e o que não captura |
| **Métrica e gráficos** (cél. 8–9) | Só imprime número | RMSE + um gráfico | Predito vs. real + resíduo | Resíduo por faixa de operação: mostra onde o modelo degrada |
| **Conclusão** (cél. 10) | Ausente | Diz se passou ou não | Explica por que passou/falhou | Declara faixa de validade e risco de implantação |

**Trava de nível:** RMSE < 0,8 % com célula não executável ou sem semente fixa → no máximo **B**.
Métrica fraca com diagnóstico honesto → **P**.

---

## 3. Laboratório 2 — MLP com Keras

Baseline a bater: **XGBoost, RMSE ≈ 1,5 %** no rendimento do CSTR. Roteiro de 10 células,
com decisões de arquitetura registradas em markdown.

| Critério | I | B | P | E |
|---|---|---|---|---|
| **Baseline** (cél. 1–4) | Não reproduz o baseline | Reproduz o XGBoost | Compara baseline e MLP na mesma partição | Explica por que a MLP supera (ou não) o ensemble |
| **Arquitetura** (cél. 5–7) | Copia do gabarito sem justificar | Define camadas e ativações | Justifica nº de camadas/neurônios e regularização | Testa duas arquiteturas e mostra o efeito |
| **Treino** | Sem `validation_split` ou early stopping | Usa validação | Curva de aprendizado analisada | Detecta overfitting pela curva e corrige |
| **Escalonamento** | Não normaliza | Normaliza entrada | Normaliza e discute por que importa | Mostra o que acontece sem normalizar |
| **Avaliação e conclusão** | Só `evaluate()` | RMSE no teste | Comparação com baseline + leitura crítica | Declara onde a rede perde para o XGBoost e por quê |

**Trava de nível:** modelo salvo `.keras` sem versão do TensorFlow registrada → máximo **P**.
Rede que só funciona na faixa de treino, sem que o aluno perceba → **B**, mesmo com RMSE bom.

---

## 4. Laboratório 3 — Modelo híbrido (caixa-cinza)

O checklist do template tem 8 itens objetivos. A rubrica avalia **o que o checklist não vê**.

| Item do checklist | O que se exige para P |
|---|---|
| Balanço de massa escrito | Equação correta, com hipóteses declaradas (estado estacionário, mistura perfeita) |
| Parâmetro `k` identificado | Isola `k` algebricamente, sem erro de manipulação |
| `k_real` calculado | Usa os dados para obter o valor de referência |
| ML treinado para `k` | Modela `k` em função de variáveis de processo, com validação |
| Acoplamento implementado | Balanço + ML produzem `C_A` conjuntamente |
| Comparação com caixa branca e preta | Três modelos na mesma partição de teste |
| Interpolação + extrapolação | Testa **fora** da faixa de treino e reporta o que acontece |
| Conclusão | Diz onde o híbrido ganha e onde perde |

| Nível | Descrição |
|---|---|
| **I** | Falta o balanço ou o parâmetro não foi isolado |
| **B** | Checklist completo, mas sem comparação entre os três modelos |
| **P** | Comparação completa em interpolação, conclusão coerente |
| **E** | Mostra o híbrido **extrapolando melhor** que a caixa-preta e explica o motivo físico |

O nível **E** deste laboratório é o mais valioso do curso: é o único momento em que o aluno vê
o conhecimento de processo valendo mais que o dado bruto.

---

## 5. Projeto integrador (aulas 24–30)

Entrega: notebook + relatório executivo (2 páginas) + pitch de 12 min.

| Critério | Peso | I | B | P | E |
|---|---|---|---|---|---|
| **Formulação do problema** | 20% | Tema genérico ("IA na indústria") | Problema definido, sem métrica | Problema, variável-alvo e métrica de sucesso explícitos | Além disso, declara o custo do erro e quem usa o resultado |
| **Dados e validação** | 25% | Sem separação treino/teste | Separação aleatória | Validação temporal ou por campanha | Discute vazamento e mostra que evitou |
| **Modelagem** | 20% | Um modelo, sem baseline | Baseline + modelo | Comparação justa, escolha argumentada | Ablação: mostra qual feature/etapa realmente importa |
| **Análise crítica** | 25% | Só reporta métrica | Reconhece limitação | Faixa de validade e modo de falha | Propõe monitoramento e critério de retreino |
| **Comunicação** | 10% | Relatório confuso | Relatório legível | Executivo claro para não especialista + pitch técnico | Defende escolhas sob arguição sem ler slides |

**Trava de nível:** projeto sem variável-alvo mensurável → máximo **B**, independente da qualidade
do código. É a falha mais comum e a mais grave: modelo sem alvo é exercício, não engenharia.

---

## 6. Tarefas pós-aula

Correção binária, com uma ressalva:

- **Aceito**: entrega o que foi pedido, executável, com as observações em markdown.
- **Não aceito**: notebook que não roda, ou observações ausentes.
- **Bônus (0,5 ponto)**: quando a trilha NT (desafio extra) foi feita **e** a justificativa física
  está correta. Não dê bônus por "fez mais exercício"; dê por raciocínio de processo.

25 das 30 aulas têm tarefa; as aulas 24–27 e 30 são oficinas e não têm.

---

## 7. Política de uso de IA generativa

Isto precisa estar na ementa no primeiro dia, não no edital de recurso.

**Permitido:** usar assistente de código para sintaxe, depuração e explicação de erro.
**Permitido com declaração:** usar IA para gerar rascunho de código, desde que o aluno
registre em markdown o que pediu e o que mudou.
**Não aceito:** entregar análise que o aluno não sabe defender sob arguição. A defesa oral
não é punição — é o instrumento que distingue "usei ferramenta" de "não fiz".

Critério objetivo: se o aluno não consegue explicar por que escolheu uma métrica, o item de
*análise crítica* cai para **I**, mesmo que o notebook execute perfeitamente.

---

## 8. Fechamento da nota

| Instrumento | Peso |
|---|---|
| Laboratórios 1–3 | 30 % (10 % cada) |
| Projeto integrador | 40 % |
| Tarefas pós-aula | 20 % |
| Participação e discussão | 10 % |

A participação é medida pelo que o aluno **contesta** nas aulas 19–23 (governança, ética,
risco): pergunta que expõe uma premissa vale mais que resposta certa.
