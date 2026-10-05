# FarmTech — Análise Estatística de Dados do Agro

Projeto acadêmico da FIAP para a atividade **Cap. 7 — Decolando com Ciências de Dados**.

**Prazo informado na atividade:** 14/10/2026.

## Objetivo

Construir uma base de dados relacionada ao agronegócio, usando fonte pública oficial, e realizar uma análise exploratória em **R**.

## Estratégia definida

A fonte escolhida é o **IBGE — Censo Agropecuário 2017 — SIDRA — Tabela 6880**.

A base será organizada com **10 municípios de Minas Gerais × 3 grupos oficiais de área total = 30 registros**.

### Variáveis

| Coluna | Tipo | Motivo |
|---|---|---|
| Municipio | Qualitativa nominal | identifica categorias sem ordem natural |
| Grupo_Area | Qualitativa ordinal | as faixas possuem ordem natural crescente |
| Numero_Estabelecimentos | Quantitativa discreta | é uma contagem em unidades |
| Area_Estabelecimentos_ha | Quantitativa contínua | é uma medida de área em hectares |

## Entregáveis obrigatórios

1. **Excel** com pelo menos 30 linhas e as quatro categorias de variável.
2. **Arquivo R** com:
   - tendência central;
   - dispersão;
   - separatrizes;
   - análise gráfica quantitativa;
   - análise gráfica qualitativa.

> A parte mecânica está sendo preparada no repositório. A coleta, os cálculos em R e a interpretação devem ser executados e compreendidos pelo grupo.

---

## Estrutura

```text
FarmTech-Analise-Estatistica-Agro/
├── README.md
├── dados/
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
├── docs/
│   ├── acompanhamento.md
│   ├── roteiro-coleta-sidra.md
│   └── guia-aprendizado.md
└── .gitignore
```

## Arquivos finais esperados

```text
dados/base_agro_fiap.xlsx
scripts/analise_agro.R
graficos/histograma.png
graficos/boxplot.png
graficos/grafico_qualitativo.png
```

---

# Plano por etapas

## Etapa 0 — Organização

- [x] Repositório criado.
- [x] Estrutura documentada.
- [x] Guia de aprendizado criado.
- [ ] Confirmar integrantes/RMs e responsáveis.

## Etapa 1 — Fonte e coleta

- [x] Fonte oficial escolhida.
- [x] Tabela definida.
- [x] Estratégia de 30 registros definida.
- [x] Roteiro de coleta preparado.
- [ ] Executar a consulta no SIDRA.
- [ ] Conferir valores ausentes/inibidos.
- [ ] Guardar os valores reais.

Veja: `docs/roteiro-coleta-sidra.md`.

## Etapa 2 — Variáveis

- [x] Quatro variáveis definidas.
- [x] Dicionário preparado.
- [ ] O grupo deve justificar corretamente a classificação de cada variável.

Veja: `dados/dicionario_dados.md`.

## Etapa 3 — Base

- [x] Modelo com 30 combinações criado.
- [ ] Preencher os valores oficiais.
- [ ] Criar `dados/base_agro_fiap.xlsx`.
- [ ] Criar/confirmar aba de fonte e dicionário.

## Etapa 4 — Validação

Antes do R:

- [ ] exatamente 30 ou mais registros utilizáveis;
- [ ] nenhuma ausência tratada como zero;
- [ ] sem duplicidade indevida;
- [ ] unidades conferidas;
- [ ] tipos das variáveis conferidos;
- [ ] arquivo abre corretamente.

## Etapa 5 — Tendência central e dispersão em R

Etapa de aprendizado do grupo.

- [ ] média;
- [ ] mediana;
- [ ] moda;
- [ ] mínimo/máximo;
- [ ] amplitude;
- [ ] variância;
- [ ] desvio padrão.

## Etapa 6 — Separatrizes e gráficos quantitativos

- [ ] Q1;
- [ ] Q2;
- [ ] Q3;
- [ ] histograma;
- [ ] boxplot;
- [ ] interpretação.

## Etapa 7 — Qualitativa

- [ ] tabela de frequências;
- [ ] gráfico de barras;
- [ ] interpretação da variável ordinal.

## Etapa 8 — Arquivo R final

O esqueleto guiado está em `scripts/analise_agro.R`.

- [ ] preencher a identificação exigida;
- [ ] completar os comandos;
- [ ] executar do início ao fim;
- [ ] entender o resultado de cada bloco.

## Etapa 9 — Auditoria pré-entrega

- [ ] Excel confere com o SIDRA;
- [ ] R executa sem erro;
- [ ] requisitos do enunciado estão todos presentes;
- [ ] arquivos corretos foram selecionados para upload;
- [ ] grupo consegue explicar o trabalho.

---

# Status atual

**Concluído:** planejamento, fonte, desenho da base, dicionário, roteiro de coleta e estrutura guiada do R.

**Próximo bloqueio:** obter os valores reais do SIDRA.

## Próxima ação

Abra `docs/roteiro-coleta-sidra.md` e faça a consulta da Tabela 6880.

Quando tiver o Excel/CSV exportado pelo SIDRA, coloque-o no repositório ou envie aqui. A partir dele, a próxima etapa será validar a base sem fazer a análise estatística por você.
