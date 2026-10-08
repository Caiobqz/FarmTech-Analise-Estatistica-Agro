# Acompanhamento do trabalho

## Etapa 0 — Organização
- Status: **em andamento**
- Repositório: criado
- Estrutura: criada
- Documentação inicial: criada
- Falta: confirmar identificação final de todos os integrantes no arquivo de entrega

## Etapa 1 — Fonte e coleta
- Status: **concluída**
- Fonte: IBGE — Censo Agropecuário 2017
- Sistema: SIDRA
- Tabela: 6880
- Recorte: 10 municípios × 3 grupos de área
- Registros: 30
- Valores numéricos coletados: 60
- Valores ausentes na base consolidada: 0

## Etapa 2 — Variáveis
- Status: **concluída**
- Qualitativa nominal: `Municipio`
- Qualitativa ordinal: `Grupo_Area`
- Quantitativa discreta: `Numero_Estabelecimentos`
- Quantitativa contínua: `Area_Estabelecimentos_ha`

## Etapa 3 — Excel
- Status: **concluída**
- Arquivo: `dados/base_agro_fiap.xlsx`
- Aba principal: `Base`
- Aba documental: `Fonte_e_Dicionario`
- Estrutura: 30 linhas × 4 colunas principais

## Etapa 4 — Validação no R
- Status: **concluída**
- 30 linhas
- 4 colunas
- 0 valores ausentes
- 0 linhas duplicadas
- nomes das colunas validados

## Etapa 5 — Tendência central e dispersão
- Status: **concluída**
- Média: 24688,97 ha
- Mediana: 22798,50 ha
- Moda: inexistente (amodal)
- Mínimo: 8499 ha
- Máximo: 44178 ha
- Amplitude: 35679 ha
- Variância: 108084387 ha²
- Desvio padrão: 10396,36 ha

## Etapa 6 — Separatrizes e gráficos quantitativos
- Status: **concluída**
- Q1: 16470,25 ha
- Q2: 22798,50 ha
- Q3: 32721,25 ha
- IQR: 16251 ha
- Outliers pelo critério 1,5 × IQR: nenhum
- Histograma: implementado no script
- Boxplot: implementado no script
- Arquivos gerados pelo script:
  - `graficos/histograma.png`
  - `graficos/boxplot.png`

## Etapa 7 — Qualitativa
- Status: **concluída**
- Variável: `Grupo_Area`
- Convertida para fator ordenado no R
- Frequências: 10 / 10 / 10
- Gráfico de barras: implementado
- Arquivo gerado:
  - `graficos/grafico_qualitativo.png`

## Etapa 8 — Arquivo R final
- Status: **consolidado**
- Arquivo: `scripts/analise_agro.R`
- Importação: pronta
- Validação: pronta
- Tendência central: pronta
- Dispersão: pronta
- Separatrizes: prontas
- Gráficos: prontos
- Interpretações: documentadas

### Pendente obrigatório
Substituir a primeira linha:

`# NomeCompleto_RMxxxxx_faseX_cap7`

pela identificação exigida pela FIAP.

## Etapa 9 — Revisão e entrega
- Status: **pendente**

### Próxima ação
1. Executar `source("scripts/analise_agro.R")` do início ao fim.
2. Confirmar que não há erros.
3. Confirmar que os três PNGs foram criados em `graficos/`.
4. Preencher corretamente a identificação da primeira linha.
5. Fazer a auditoria final contra o enunciado da FIAP.
6. Só depois preparar o upload.
