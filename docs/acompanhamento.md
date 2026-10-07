# Acompanhamento do trabalho

Atualizar este arquivo conforme as etapas forem concluídas.

## Etapa 0 — Organização

- Status: **em andamento**
- Repositório: criado
- Estrutura: criada
- README: documentado
- Guia de aprendizado: criado
- Falta: confirmar integrantes/RMs e responsabilidades

## Etapa 1 — Fonte e coleta

- Status: **concluída**
- Fonte: IBGE — Censo Agropecuário 2017
- Sistema: SIDRA
- Tabela: 6880
- Consulta executada com 10 municípios × 3 grupos de área
- Arquivo bruto conferido
- Foram obtidos 30 registros e 60 valores numéricos
- Não foram identificados valores ausentes na base consolidada

## Etapa 2 — Variáveis

- Status: **definida**
- Qualitativa nominal: `Municipio`
- Qualitativa ordinal: `Grupo_Area`
- Quantitativa discreta: `Numero_Estabelecimentos`
- Quantitativa contínua: `Area_Estabelecimentos_ha`
- Dicionário: `dados/dicionario_dados.md`

A classificação já está documentada, mas o grupo ainda deve saber justificá-la.

## Etapa 3 — Excel

- Status: **concluída**
- Base final: `dados/base_agro_fiap.xlsx`
- 30 registros
- 4 colunas principais
- Aba `Base`
- Aba `Fonte_e_Dicionario`
- Valores mantidos conforme a exportação do SIDRA

## Etapa 4 — Validação e importação no R

- Status: **código preparado**
- `scripts/analise_agro.R` já contém:
  - carregamento seguro do pacote `readxl`;
  - leitura da aba `Base`;
  - conferência de dimensões;
  - nomes das colunas;
  - estrutura dos dados;
  - primeiras linhas;
  - valores ausentes;
  - linhas duplicadas;
  - validação das quatro colunas esperadas;
  - validação de pelo menos 30 registros.

### Resultado esperado ao executar

- 30 linhas;
- 4 colunas;
- 0 valores ausentes;
- 0 linhas duplicadas.

## Etapas 5 e 6 — Análise quantitativa

- Status: **pendente — etapa de aprendizado**
- Próximos conteúdos:
  - média;
  - mediana;
  - moda;
  - mínimo/máximo;
  - amplitude;
  - variância;
  - desvio padrão;
  - quartis;
  - histograma;
  - boxplot.

## Etapa 7 — Qualitativa

- Status: **pendente — etapa de aprendizado**
- Saída esperada: frequências + gráfico de barras

## Etapa 8 — R final

- Status: **em andamento**
- Importação e conferência inicial já implementadas
- Análise estatística ainda não implementada
- Identificação da primeira linha ainda precisa ser preenchida com nome/RM/fase/capítulo

## Etapa 9 — Revisão e entrega

- Status: **pendente**

---

## Próxima ação objetiva

1. Fazer `git pull` no computador para receber a base e o script atualizados.
2. Abrir o projeto no RStudio pela raiz do repositório.
3. Abrir `scripts/analise_agro.R`.
4. Preencher a primeira linha com os dados exigidos pela FIAP.
5. Executar somente as seções 1 a 4.
6. Confirmar que o Console mostra 30 linhas, 4 colunas, 0 ausências e 0 duplicidades.
7. Depois começar a análise quantitativa.

A etapa que realmente precisa ser aprendida agora é a análise estatística. A importação e a validação mecânica da base já estão preparadas.
