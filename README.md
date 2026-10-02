# FarmTech — Análise Estatística de Dados do Agro

Projeto acadêmico da FIAP para a atividade **Cap. 7 — Decolando com Ciências de Dados**.

**Prazo informado na atividade:** 14/10/2026.

## Objetivo

Construir uma base de dados relacionada ao agronegócio, usando fontes públicas oficiais, e realizar uma análise exploratória em **R**.

A atividade exige:
- um arquivo Excel com **pelo menos 30 linhas e 4 colunas**;
- uma variável quantitativa discreta;
- uma variável quantitativa contínua;
- uma variável qualitativa nominal;
- uma variável qualitativa ordinal;
- análise exploratória de uma variável quantitativa em R;
- análise gráfica de uma variável qualitativa em R;
- arquivo `.R` com identificação na primeira linha.

## Entregáveis obrigatórios

1. **Arquivo Excel** com a base de dados.
2. **Arquivo R** com os códigos utilizados.

> O repositório contém materiais auxiliares para organização, documentação, fontes e gráficos. Antes da entrega, conferir na plataforma da FIAP exatamente quais arquivos devem ser enviados.

---

## Estrutura do repositório

```text
FarmTech-Analise-Estatistica-Agro/
├── README.md
├── dados/
│   └── README.md
├── scripts/
│   └── README.md
├── graficos/
│   └── README.md
├── referencias/
│   └── fontes.md
├── docs/
│   └── acompanhamento.md
└── .gitignore
```

Os arquivos finais deverão ser adicionados depois:

```text
dados/base_agro_fiap.xlsx
scripts/analise_agro.R
graficos/histograma.png
graficos/boxplot.png
graficos/grafico_qualitativo.png
```

---

# Plano por etapas

## Etapa 0 — Organização do projeto

**Objetivo:** deixar o grupo trabalhando sobre a mesma estrutura.

### Fazer
- [x] Criar o repositório.
- [x] Criar a estrutura inicial.
- [x] Documentar as etapas.
- [ ] Confirmar integrantes e RMs.
- [ ] Definir quem ficará responsável por cada etapa.

### Critério de conclusão
Todos do grupo conseguem abrir o repositório e entender o que precisa ser feito sem depender de explicação externa.

---

## Etapa 1 — Escolher o tema e a fonte dos dados

A atividade permite pesquisar dados em:
- CONAB;
- IBGE;
- MAPA;
- Embrapa;
- INPE;
- CNA Brasil.

### Proposta inicial recomendada

Trabalhar com **30 ou mais municípios** e indicadores agropecuários de uma fonte oficial, preferencialmente **IBGE/SIDRA** ou outra fonte que forneça os dados necessários de forma consistente.

### Fazer
- [ ] Escolher a fonte oficial.
- [ ] Escolher o conjunto de dados/tabela.
- [ ] Confirmar que existem pelo menos 30 registros utilizáveis.
- [ ] Registrar o link exato da fonte em `referencias/fontes.md`.
- [ ] Registrar ano/período e unidade de medida dos dados.

### Critério de conclusão
A origem de cada dado pode ser explicada e reproduzida.

---

## Etapa 2 — Definir as quatro variáveis

A planilha precisa conter os quatro tipos pedidos.

| Exemplo de coluna | Tipo | Por quê |
|---|---|---|
| Município | Qualitativa nominal | É uma categoria sem ordem natural |
| Número de estabelecimentos | Quantitativa discreta | É uma contagem inteira |
| Área total (ha) | Quantitativa contínua | É uma medida |
| Faixa de área | Qualitativa ordinal | Possui ordem, por exemplo Baixa < Média < Alta |

> Esta tabela é uma proposta. Só será considerada definitiva depois de verificarmos os dados escolhidos na fonte oficial.

### Fazer
- [ ] Confirmar a variável discreta.
- [ ] Confirmar a variável contínua.
- [ ] Confirmar a variável nominal.
- [ ] Confirmar a variável ordinal.
- [ ] Documentar unidade e significado de cada coluna.
- [ ] Garantir que a variável ordinal tenha uma regra objetiva e documentada.

### Atenção
Não criar uma variável ordinal apenas colocando rótulos arbitrários. Se houver classificação em "Baixa", "Média" e "Alta", a regra precisa estar documentada e ser reproduzível.

---

## Etapa 3 — Montar a base em Excel

Arquivo sugerido:

`dados/base_agro_fiap.xlsx`

### Requisitos
- [ ] Pelo menos 30 linhas de dados.
- [ ] Pelo menos 4 colunas principais.
- [ ] Cabeçalhos claros.
- [ ] Sem linhas vazias no meio da base.
- [ ] Sem duplicidades indevidas.
- [ ] Valores numéricos armazenados como números.
- [ ] Unidades de medida documentadas.
- [ ] Fonte registrada.

### Estrutura sugerida

| Municipio | Numero_Estabelecimentos | Area_Total_ha | Faixa_Area |
|---|---:|---:|---|
| ... | ... | ... | ... |

### Recomendação
Criar uma segunda aba chamada **Fonte_e_Dicionario** com:
- nome da variável;
- tipo estatístico;
- descrição;
- unidade;
- fonte;
- ano/período.

### Critério de conclusão
A planilha está limpa, possui 30+ registros e os quatro tipos de variável estão corretos.

---

## Etapa 4 — Validar os dados antes do R

Antes de calcular qualquer estatística:

- [ ] Conferir valores faltantes.
- [ ] Conferir valores duplicados.
- [ ] Conferir números negativos impossíveis.
- [ ] Conferir unidades.
- [ ] Conferir se todas as linhas pertencem ao mesmo período ou se a diferença está documentada.
- [ ] Conferir se os nomes das colunas do Excel estão padronizados.
- [ ] Conferir se a variável ordinal respeita a regra definida.

### Critério de conclusão
O grupo consegue explicar por que cada linha e coluna está na base.

---

## Etapa 5 — Análise da variável quantitativa em R

Escolher **uma variável quantitativa**. A recomendação inicial é analisar uma medida contínua, como área em hectares, caso a base final possua essa variável.

### Tendência central
- [ ] Média.
- [ ] Mediana.
- [ ] Moda.

### Dispersão
- [ ] Mínimo.
- [ ] Máximo.
- [ ] Amplitude.
- [ ] Variância.
- [ ] Desvio padrão.
- [ ] Coeficiente de variação, se fizer sentido para a variável.

### Separatrizes
- [ ] Q1.
- [ ] Q2 / mediana.
- [ ] Q3.
- [ ] Outros percentis, se necessários.

### Critério de conclusão
Os cálculos funcionam no R e cada resultado pode ser interpretado em relação aos dados agropecuários.

---

## Etapa 6 — Análise gráfica quantitativa

Gráficos recomendados:
- [ ] Histograma.
- [ ] Boxplot.

Salvar em:
- `graficos/histograma.png`
- `graficos/boxplot.png`

### O grupo deve conseguir responder
- Os valores estão concentrados em alguma faixa?
- Há assimetria?
- Existem possíveis outliers?
- Média e mediana estão próximas ou distantes?

---

## Etapa 7 — Análise da variável qualitativa em R

Escolher uma variável qualitativa.

### Fazer
- [ ] Criar tabela de frequências.
- [ ] Criar gráfico de barras.
- [ ] Identificar a categoria mais frequente.
- [ ] Salvar o gráfico em `graficos/grafico_qualitativo.png`.

### Critério de conclusão
O gráfico representa corretamente as categorias e possui título/eixos legíveis.

---

## Etapa 8 — Preparar o arquivo R final

Arquivo:

`scripts/analise_agro.R`

A primeira linha deve seguir a regra da atividade:

```r
# NomeCompleto_RMxxxxx_faseX_cap7
```

Como a atividade é em grupo, o grupo deve confirmar com a disciplina como identificar todos os integrantes. Até essa confirmação, não remover a identificação individual exigida no enunciado.

### O arquivo deverá conter, em ordem
1. Identificação.
2. Carregamento dos pacotes.
3. Importação da planilha.
4. Conferência inicial dos dados.
5. Análise da variável quantitativa.
6. Medidas de tendência central.
7. Medidas de dispersão.
8. Separatrizes.
9. Gráficos quantitativos.
10. Análise gráfica da variável qualitativa.

---

## Etapa 9 — Revisão final

Antes da entrega:

- [ ] Excel abre sem erro.
- [ ] Existem pelo menos 30 registros.
- [ ] Existem os quatro tipos de variável.
- [ ] A fonte é oficial e está registrada.
- [ ] O código R executa do início ao fim.
- [ ] A primeira linha do R possui a identificação exigida.
- [ ] Tendência central foi calculada.
- [ ] Dispersão foi calculada.
- [ ] Separatrizes foram calculadas.
- [ ] Existe análise gráfica quantitativa.
- [ ] Existe análise gráfica qualitativa.
- [ ] Nomes dos arquivos estão claros.
- [ ] Versão final foi baixada e aberta antes do upload.
- [ ] O grupo conferiu que está enviando os arquivos corretos na FIAP.

---

# Divisão sugerida do grupo

Não é eficiente colocar todos editando a mesma planilha ao mesmo tempo.

| Frente | Responsabilidade |
|---|---|
| Dados | Encontrar e validar a fonte oficial |
| Excel | Montar e limpar a base |
| Estatística | Conferir variáveis e cálculos |
| R | Implementar análise e gráficos |
| Revisão | Executar tudo do zero e conferir a entrega |

Uma pessoa pode atuar em mais de uma frente, mas cada frente deve ter um responsável claro.

---

# Fluxo de trabalho no GitHub

Para evitar que alguém sobrescreva o trabalho de outro:

1. Atualize o repositório local.
2. Crie uma branch com o nome da tarefa.
3. Faça alterações pequenas e específicas.
4. Faça commit explicando o que mudou.
5. Envie a branch.
6. Revise antes de juntar à `main`.

Exemplos de branches:

```text
dados/base-inicial
r/analise-quantitativa
r/graficos
docs/fontes
fix/revisao-final
```

---

# Status atual

- [x] Repositório criado.
- [x] Plano de execução documentado.
- [x] Estrutura inicial preparada.
- [ ] Fonte oficial escolhida.
- [ ] Dados coletados.
- [ ] Excel criado.
- [ ] Variáveis validadas.
- [ ] Código R criado.
- [ ] Gráficos gerados.
- [ ] Revisão final concluída.
- [ ] Entrega realizada.

## Próximo passo

**Etapa 1:** escolher e validar a fonte de dados oficial antes de começar a escrever o código R.
