# Dicionário de dados

## Base proposta

| Coluna | Tipo estatístico | Unidade | Significado |
|---|---|---|---|
| Municipio | Qualitativa nominal | — | Município mineiro ao qual o registro se refere |
| Grupo_Area | Qualitativa ordinal | hectares (faixa) | Classe oficial de área total do estabelecimento agropecuário |
| Numero_Estabelecimentos | Quantitativa discreta | unidades | Número de estabelecimentos agropecuários na combinação município/faixa |
| Area_Estabelecimentos_ha | Quantitativa contínua | hectares | Área dos estabelecimentos agropecuários na combinação município/faixa |

## Ordem da variável ordinal

`Grupo_Area` deve ser considerada nesta ordem:

1. De 20 a menos de 50 ha
2. De 50 a menos de 100 ha
3. De 100 a menos de 200 ha

## Fonte

IBGE — Censo Agropecuário 2017 — SIDRA — Tabela 6880.

Link: https://sidra.ibge.gov.br/tabela/6880

## Observação importante

Os valores numéricos ainda precisam ser coletados e conferidos diretamente na fonte. O modelo de base não contém números inventados.
