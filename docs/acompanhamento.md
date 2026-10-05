# Acompanhamento do trabalho

Atualizar este arquivo conforme as etapas forem concluídas.

## Etapa 0 — Organização

- Status: **em andamento**
- Repositório: criado
- Estrutura: criada
- README: documentado
- Guia de aprendizado: criado
- Falta: confirmar integrantes/RMs e responsabilidades

## Etapa 1 — Fonte

- Status: **fonte definida / coleta pendente**
- Fonte: IBGE — Censo Agropecuário 2017
- Sistema: SIDRA
- Tabela: 6880
- Roteiro: `docs/roteiro-coleta-sidra.md`
- Falta: executar a consulta e verificar se todos os 30 registros possuem dados utilizáveis

## Etapa 2 — Variáveis

- Status: **desenho definido / validação pelo grupo pendente**
- Qualitativa nominal: `Municipio`
- Qualitativa ordinal: `Grupo_Area`
- Quantitativa discreta: `Numero_Estabelecimentos`
- Quantitativa contínua: `Area_Estabelecimentos_ha`
- Dicionário: `dados/dicionario_dados.md`

## Etapa 3 — Excel

- Status: **modelo preparado**
- Modelo: `dados/modelo_base.csv`
- Falta: preencher com os valores reais do SIDRA e salvar a versão final em Excel
- Saída esperada: `dados/base_agro_fiap.xlsx`

## Etapa 4 — Validação

- Status: **pendente**
- Saída esperada: base revisada e pronta para análise

## Etapas 5 e 6 — Quantitativa

- Status: **pendente — etapa de aprendizado**
- Saída esperada: medidas estatísticas + histograma + boxplot

## Etapa 7 — Qualitativa

- Status: **pendente — etapa de aprendizado**
- Saída esperada: frequências + gráfico de barras

## Etapa 8 — R final

- Status: **esqueleto preparado**
- Saída esperada: `scripts/analise_agro.R`
- O grupo deve completar os comandos e compreender o resultado.

## Etapa 9 — Revisão e entrega

- Status: **pendente**
- Saída esperada: arquivos finais testados e conferidos

---

## Próxima ação objetiva

Abrir a Tabela 6880 do SIDRA e executar o roteiro em `docs/roteiro-coleta-sidra.md`.

O próximo bloqueio real do projeto é a coleta dos valores. O código R não deve ser concluído antes da validação da base.
