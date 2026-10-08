# FarmTech — Análise Estatística de Dados do Agro

Projeto acadêmico da FIAP para a atividade **Cap. 7 — Decolando com Ciências de Dados**.

**Prazo informado na atividade:** 14/10/2026.

## Objetivo

Construir uma base relacionada ao agronegócio a partir de fonte pública oficial e realizar uma análise exploratória em **R**.

## Fonte

**IBGE — Censo Agropecuário 2017 — SIDRA — Tabela 6880**

A base utiliza 10 municípios de Minas Gerais combinados com três grupos oficiais de área total, produzindo **30 registros**.

## Variáveis

| Coluna | Classificação |
|---|---|
| `Municipio` | Qualitativa nominal |
| `Grupo_Area` | Qualitativa ordinal |
| `Numero_Estabelecimentos` | Quantitativa discreta |
| `Area_Estabelecimentos_ha` | Quantitativa contínua |

## Arquivos principais

```text
dados/base_agro_fiap.xlsx
scripts/analise_agro.R
```

O script também gera:

```text
graficos/histograma.png
graficos/boxplot.png
graficos/grafico_qualitativo.png
```

## Análise implementada

### Tendência central
- média;
- mediana;
- verificação da moda.

### Dispersão
- mínimo;
- máximo;
- amplitude;
- variância;
- desvio padrão.

### Separatrizes
- Q1;
- Q2;
- Q3;
- intervalo interquartil.

### Análise gráfica quantitativa
- histograma;
- boxplot;
- verificação de outliers pelo critério de 1,5 × IQR.

### Análise qualitativa
- conversão de `Grupo_Area` para fator ordinal;
- tabela de frequências;
- gráfico de barras.

## Principais resultados da variável de área

| Medida | Resultado |
|---|---:|
| Média | 24688,97 ha |
| Mediana | 22798,50 ha |
| Moda | amodal |
| Mínimo | 8499 ha |
| Máximo | 44178 ha |
| Amplitude | 35679 ha |
| Variância | 108084387 ha² |
| Desvio padrão | 10396,36 ha |
| Q1 | 16470,25 ha |
| Q2 | 22798,50 ha |
| Q3 | 32721,25 ha |
| IQR | 16251 ha |

Não foram identificados outliers pelo critério de **1,5 × IQR**.

## Estrutura

```text
FarmTech-Analise-Estatistica-Agro/
├── README.md
├── dados/
│   ├── base_agro_fiap.xlsx
│   ├── README.md
│   ├── modelo_base.csv
│   └── dicionario_dados.md
├── scripts/
│   ├── README.md
│   └── analise_agro.R
├── graficos/
│   └── README.md
├── referencias/
│   └── fontes.md
└── docs/
    ├── acompanhamento.md
    ├── guia-aprendizado.md
    └── roteiro-coleta-sidra.md
```

## Status

- [x] Fonte oficial escolhida.
- [x] Dados coletados.
- [x] Excel consolidado.
- [x] Variáveis classificadas.
- [x] Importação e validação em R.
- [x] Tendência central.
- [x] Dispersão.
- [x] Separatrizes.
- [x] Histograma.
- [x] Boxplot.
- [x] Análise qualitativa.
- [x] Gráfico qualitativo.
- [x] Script consolidado.
- [x] Identificação obrigatória preenchida no topo do arquivo R.
- [x] Script final executado do início ao fim sem erro.
- [x] Gráficos finais gerados localmente.
- [x] Auditoria pré-entrega concluída.
- [ ] Entregar na FIAP.

## Como executar

Abra o RStudio pela raiz do repositório e, no Console, execute:

```r
source("scripts/analise_agro.R")
```

Se o pacote `readxl` ainda não estiver instalado:

```r
install.packages("readxl")
```

Depois execute novamente o script.

## Integrantes

| Integrante | RM |
|---|---:|
| Caio Barros Queiroz | RM576443 |
| Kauê Araujo | RM576394 |
| Cleidimar Dias da Silva | RM576009 |
| Jullianna Silva Furtado | RM579614 |
| Paulo Vitor Isidoro Silva | RM575580 |

## Atenção antes da entrega

Os nomes, RMs, **Fase 2** e **Capítulo 7** já estão registrados no topo de `scripts/analise_agro.R`.

A versão final do script foi executada do início ao fim sem erro e gerou os três gráficos esperados.

Na plataforma da FIAP, os entregáveis indicados no enunciado são:
- `dados/base_agro_fiap.xlsx`;
- `scripts/analise_agro.R`.

Os PNGs, README e demais documentos permanecem no repositório como evidência e documentação do projeto.
