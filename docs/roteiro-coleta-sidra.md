# Roteiro de coleta no SIDRA — Tabela 6880

Este roteiro existe para acelerar a parte mecânica sem retirar do grupo a etapa de compreender e conferir os dados.

## Fonte definida

- **Instituição:** IBGE
- **Sistema:** SIDRA — Sistema IBGE de Recuperação Automática
- **Pesquisa:** Censo Agropecuário 2017
- **Tabela:** 6880 — Número de estabelecimentos agropecuários e Área dos estabelecimentos agropecuários, por tipologia, grupos de atividade econômica, tipo de prática agrícola e grupos de área total
- **Link:** https://sidra.ibge.gov.br/tabela/6880
- **Ano:** 2017

## Desenho da base

Serão usados **10 municípios de Minas Gerais × 3 grupos de área = 30 registros**.

### Municípios propostos

1. Uberaba
2. Uberlândia
3. Patos de Minas
4. Patrocínio
5. Unaí
6. Paracatu
7. João Pinheiro
8. Frutal
9. Monte Carmelo
10. Curvelo

### Grupos de área

Usar exatamente estas três categorias, nesta ordem:

1. De 20 a menos de 50 ha
2. De 50 a menos de 100 ha
3. De 100 a menos de 200 ha

Essas faixas já existem na classificação oficial do SIDRA. Portanto, não estamos inventando uma variável ordinal artificial.

## Como configurar a consulta

Na Tabela 6880:

### 1. Variáveis

Selecionar:
- **Número de estabelecimentos agropecuários — Unidades**
- **Área dos estabelecimentos agropecuários — Hectares**

### 2. Período

Selecionar:
- **2017**

### 3. Tipologia

Selecionar somente:
- **Total**

Não cruzar com agricultura familiar nesta atividade.

### 4. Grupos de atividade econômica

Selecionar somente:
- **Total**

### 5. Tipo de prática agrícola

Selecionar somente:
- **Total**

### 6. Grupos de área total

Selecionar:
- **De 20 a menos de 50 ha**
- **De 50 a menos de 100 ha**
- **De 100 a menos de 200 ha**

### 7. Unidade territorial

Selecionar **Município** e marcar os 10 municípios listados acima.

### 8. Gerar a tabela

Antes de exportar, confira:
- os 10 municípios;
- as 3 faixas;
- as duas variáveis;
- o ano 2017.

Depois exporte a consulta para Excel ou CSV.

---

## Como transformar a saída na base da atividade

A base final deve ficar no formato:

| Municipio | Grupo_Area | Numero_Estabelecimentos | Area_Estabelecimentos_ha |
|---|---|---:|---:|
| Uberaba | De 20 a menos de 50 ha | valor SIDRA | valor SIDRA |
| Uberaba | De 50 a menos de 100 ha | valor SIDRA | valor SIDRA |
| Uberaba | De 100 a menos de 200 ha | valor SIDRA | valor SIDRA |
| ... | ... | ... | ... |

O arquivo `dados/modelo_base.csv` já contém as 30 combinações para evitar digitação repetitiva.

## Se aparecer dado inibido ou ausente

O Censo Agropecuário pode inibir valores em algumas combinações para proteger informantes.

Se algum dos 30 registros vier sem um dos dois valores:
1. não transforme ausência em zero;
2. registre qual linha veio inibida;
3. substitua o município por outro município mineiro;
4. mantenha as mesmas três faixas de área;
5. documente a troca.

Não altere os números publicados pelo IBGE.

---

# O que você precisa compreender

Antes de considerar a coleta concluída, você deve conseguir explicar:

1. Por que **Município** é qualitativa nominal?
2. Por que **Grupo_Area** é qualitativa ordinal?
3. Por que **Numero_Estabelecimentos** é quantitativa discreta?
4. Por que **Area_Estabelecimentos_ha** é quantitativa contínua?
5. Por que usamos exatamente 10 municípios e 3 faixas?
6. De onde vieram os valores?

Se essas respostas não estiverem claras, não vale avançar para o R.
