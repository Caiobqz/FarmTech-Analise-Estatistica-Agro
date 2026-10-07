# NomeCompleto_RMxxxxx_faseX_cap7

# ============================================================
# FarmTech - Análise Estatística de Dados do Agro
# Fonte: IBGE / Censo Agropecuário 2017 / SIDRA - Tabela 6880
# Base: dados/base_agro_fiap.xlsx
# ============================================================

# IMPORTANTE:
# Antes da entrega, substitua a primeira linha pelos dados exigidos
# pela FIAP (nome completo, RM, fase e capítulo).

# 1. Pacotes -------------------------------------------------
# O pacote readxl é usado para ler arquivos .xlsx.
#
# Se ainda não estiver instalado, execute UMA VEZ no Console:
# install.packages("readxl")

if (!requireNamespace("readxl", quietly = TRUE)) {
  stop(
    "O pacote 'readxl' não está instalado. ",
    "Execute install.packages('readxl') no Console do RStudio e tente novamente."
  )
}

library(readxl)


# 2. Caminho e importação da base -----------------------------
arquivo_base <- file.path("dados", "base_agro_fiap.xlsx")

if (!file.exists(arquivo_base)) {
  stop(
    "Arquivo não encontrado: ", arquivo_base,
    "\nAbra o projeto pela pasta raiz do repositório antes de executar o script."
  )
}

dados <- read_excel(
  path = arquivo_base,
  sheet = "Base"
)


# 3. Conferência inicial --------------------------------------
cat("\n=== DIMENSÕES DA BASE ===\n")
print(dim(dados))

cat("\nNúmero de linhas:", nrow(dados), "\n")
cat("Número de colunas:", ncol(dados), "\n")

cat("\n=== NOMES DAS COLUNAS ===\n")
print(names(dados))

cat("\n=== ESTRUTURA DOS DADOS ===\n")
str(dados)

cat("\n=== PRIMEIRAS LINHAS ===\n")
print(head(dados))

cat("\n=== VALORES AUSENTES POR COLUNA ===\n")
print(colSums(is.na(dados)))

cat("\n=== TOTAL DE VALORES AUSENTES ===\n")
print(sum(is.na(dados)))

cat("\n=== LINHAS DUPLICADAS ===\n")
print(sum(duplicated(dados)))


# 4. Validação estrutural -------------------------------------
colunas_esperadas <- c(
  "Municipio",
  "Grupo_Area",
  "Numero_Estabelecimentos",
  "Area_Estabelecimentos_ha"
)

if (!all(colunas_esperadas %in% names(dados))) {
  stop(
    "A base não possui todas as colunas esperadas. ",
    "Confira dados/base_agro_fiap.xlsx."
  )
}

if (nrow(dados) < 30) {
  stop("A base possui menos de 30 registros.")
}

cat("\n=== VALIDAÇÃO INICIAL ===\n")
cat("Base importada com sucesso.\n")
cat("Há pelo menos 30 registros.\n")
cat("As quatro colunas esperadas estão presentes.\n")


# ============================================================
# A PARTIR DAQUI COMEÇA A ETAPA DE ANÁLISE ESTATÍSTICA.
# Não avance sem entender o que as verificações acima mostram.
# ============================================================

# 5. Variável quantitativa ------------------------------------
# Recomendação: Area_Estabelecimentos_ha
#
# PERGUNTA:
# Por que essa variável é quantitativa contínua?
#
# TODO: selecionar/referenciar a coluna que será analisada.


# 6. Tendência central ----------------------------------------
# A atividade exige medidas de tendência central.
#
# Faça:
# - média;
# - mediana;
# - moda.
#
# ATENÇÃO:
# O R base possui funções diretas para média e mediana, mas "mode()"
# não calcula a moda estatística.
#
# TODO: implementar uma medida de cada vez e conferir o resultado.


# 7. Dispersão ------------------------------------------------
# Calcule e entenda:
# - mínimo;
# - máximo;
# - amplitude;
# - variância;
# - desvio padrão.
#
# TODO: completar esta seção.


# 8. Separatrizes ---------------------------------------------
# Calcule:
# - Q1 (25%);
# - Q2 (50%);
# - Q3 (75%).
#
# DICA: procure como a função quantile() trabalha.
#
# TODO: completar esta seção e comparar Q2 com a mediana.


# 9. Gráficos quantitativos -----------------------------------
# Produza:
# - histograma;
# - boxplot.
#
# TODO: criar os dois gráficos.


# 10. Variável qualitativa ------------------------------------
# Recomendação: Grupo_Area
#
# PERGUNTA:
# Por que essa variável é ordinal e não nominal?
#
# TODO: construir uma tabela de frequências.


# 11. Gráfico qualitativo -------------------------------------
# Crie um gráfico de barras para a variável qualitativa.
#
# TODO: produzir o gráfico com título e categorias legíveis.


# 12. Interpretação final -------------------------------------
# Não basta imprimir números.
#
# Escreva comentários curtos respondendo:
# - o que a média representa neste conjunto?
# - média e mediana são próximas?
# - há grande dispersão?
# - o que os quartis mostram?
# - qual faixa de área aparece com maior frequência?
# - há valores extremos na variável quantitativa?
#
# TODO: registrar as conclusões depois de executar toda a análise.
