# Fontes dos dados

## Fonte principal definida

- **Instituição:** Instituto Brasileiro de Geografia e Estatística — IBGE
- **Sistema:** SIDRA — Sistema IBGE de Recuperação Automática
- **Pesquisa:** Censo Agropecuário 2017
- **Tabela:** 6880
- **Título:** Número de estabelecimentos agropecuários e Área dos estabelecimentos agropecuários, por tipologia, grupos de atividade econômica, tipo de prática agrícola e grupos de área total
- **Link direto:** https://sidra.ibge.gov.br/tabela/6880
- **Ano dos dados:** 2017
- **Abrangência usada no projeto:** municípios de Minas Gerais
- **Variáveis numéricas:** número de estabelecimentos (unidades) e área dos estabelecimentos (hectares)
- **Classificação usada:** grupos de área total
- **Data de definição da fonte:** 05/10/2026

## Fonte institucional de apoio

Página do Censo Agropecuário 2017 no IBGE:

https://www.ibge.gov.br/estatisticas/economicas/agricultura-e-pecuaria/21814-2017-censo-agropecuario.html

## Recorte planejado

Serão usados 10 municípios e 3 grupos oficiais de área total, produzindo 30 registros.

Grupos:
- De 20 a menos de 50 ha
- De 50 a menos de 100 ha
- De 100 a menos de 200 ha

As duas variáveis numéricas serão coletadas para cada combinação município × grupo.

## Integridade da fonte

- não substituir valor ausente/inibido por zero;
- não arredondar ou alterar os valores publicados sem necessidade;
- manter a unidade original;
- registrar qualquer município substituído;
- manter uma cópia do arquivo bruto exportado do SIDRA, se possível.

## Roteiro

Ver `docs/roteiro-coleta-sidra.md`.

## Regra

A fonte está definida. A coleta só será considerada concluída após conferir que existem 30 registros com valores utilizáveis para as duas variáveis numéricas.
