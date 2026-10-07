# FarmTech — Análise Estatística de Dados do Agro

Projeto acadêmico da FIAP para a atividade **Cap. 7 — Decolando com Ciências de Dados**.

**Prazo informado na atividade:** 14/10/2026.

## Objetivo

Construir uma base de dados relacionada ao agronegócio, usando fonte pública oficial, e realizar uma análise exploratória em **R**.

## Estratégia definida

A fonte escolhida é o **IBGE — Censo Agropecuário 2017 — SIDRA — Tabela 6880**.

A base foi organizada com **10 municípios de Minas Gerais × 3 grupos oficiais de área total = 30 registros**.

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

---

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
├── docs/
│   ├── acompanhamento.md
│   ├── roteiro-coleta-sidra.md
│   └── guia-aprendizado.md
└── .gitignore
```

## Status atual

### Concluído

- [x] Repositório organizado.
- [x] Fonte oficial definida.
- [x] Consulta realizada no SIDRA.
- [x] 30 registros coletados.
- [x] Base Excel consolidada.
- [x] Dicionário das variáveis documentado.
- [x] Importação do Excel em R preparada.
- [x] Validação estrutural em R preparada.

### Em andamento

- [ ] Preencher identificação obrigatória na primeira linha do arquivo R.
- [ ] Executar e compreender a importação/validação no RStudio.
- [ ] Análise quantitativa.
- [ ] Separatrizes.
- [ ] Gráficos quantitativos.
- [ ] Análise qualitativa.
- [ ] Gráfico qualitativo.
- [ ] Revisão final.

## Próximo passo

Faça `git pull`, abra `scripts/analise_agro.R` no RStudio e execute as seções **1 a 4**.

O código já importa e valida a base. A partir da seção 5 começa a parte que deve ser desenvolvida e compreendida pelo grupo: a análise estatística.
