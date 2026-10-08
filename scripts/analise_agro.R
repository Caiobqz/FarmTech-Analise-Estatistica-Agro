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

if (sum(is.na(dados)) > 0) {
  warning("A base possui valores ausentes. Revise antes de interpretar os resultados.")
}

cat("\n=== VALIDAÇÃO INICIAL ===\n")
cat("Base importada com sucesso.\n")
cat("Há pelo menos 30 registros.\n")
cat("As quatro colunas esperadas estão presentes.\n")


# 5. Variável quantitativa ------------------------------------
# A variável escolhida é Area_Estabelecimentos_ha.
#
# Ela é quantitativa contínua porque representa uma medida de área.
# Mesmo que os valores publicados neste recorte estejam sem casas
# decimais, a grandeza área pode assumir valores fracionários.

area <- dados$Area_Estabelecimentos_ha


# 6. Medidas de tendência central -----------------------------
media_area <- mean(area)
mediana_area <- median(area)

# Para identificar a moda estatística, contamos quantas vezes
# cada valor aparece. A função mode() do R NÃO calcula moda estatística.
frequencias_area <- table(area)
maior_frequencia <- max(frequencias_area)

if (maior_frequencia == 1) {
  moda_area <- NA_real_
} else {
  moda_area <- as.numeric(
    names(frequencias_area)[frequencias_area == maior_frequencia]
  )
}

cat("\n=== TENDÊNCIA CENTRAL ===\n")
cat("Média:", round(media_area, 2), "ha\n")
cat("Mediana:", round(mediana_area, 2), "ha\n")

if (is.na(moda_area[1])) {
  cat("Moda: não existe (distribuição amodal; todos os valores aparecem uma vez).\n")
} else {
  cat("Moda:", paste(moda_area, collapse = ", "), "ha\n")
}

# Resultados obtidos:
# Média = 24688,97 ha
# Mediana = 22798,50 ha
# Moda = inexistente (amodal)
#
# Interpretação:
# A média é maior que a mediana, o que sugere influência dos valores
# mais altos sobre a média. Isso deve ser analisado em conjunto com
# o histograma e o boxplot.


# 7. Medidas de dispersão -------------------------------------
minimo <- min(area)
maximo <- max(area)
amplitude <- maximo - minimo
variancia <- var(area)
desvio_padrao <- sd(area)

cat("\n=== DISPERSÃO ===\n")
cat("Mínimo:", minimo, "ha\n")
cat("Máximo:", maximo, "ha\n")
cat("Amplitude:", amplitude, "ha\n")
cat("Variância:", round(variancia, 2), "ha²\n")
cat("Desvio padrão:", round(desvio_padrao, 2), "ha\n")

# Resultados obtidos:
# Mínimo = 8499 ha
# Máximo = 44178 ha
# Amplitude = 35679 ha
# Variância = 108084387 ha²
# Desvio padrão = 10396,36 ha
#
# Interpretação:
# O desvio padrão mostra que os valores apresentam dispersão relevante
# em torno da média. A amplitude também evidencia uma diferença
# considerável entre o menor e o maior valor observado.


# 8. Medidas separatrizes -------------------------------------
quartis <- quantile(
  area,
  probs = c(0.25, 0.50, 0.75)
)

q1 <- unname(quartis[1])
q2 <- unname(quartis[2])
q3 <- unname(quartis[3])

iqr <- IQR(area)

cat("\n=== SEPARATRIZES ===\n")
cat("Q1 (25%):", q1, "ha\n")
cat("Q2 (50% / mediana):", q2, "ha\n")
cat("Q3 (75%):", q3, "ha\n")
cat("IQR:", iqr, "ha\n")

# Resultados obtidos:
# Q1 = 16470,25 ha
# Q2 = 22798,50 ha
# Q3 = 32721,25 ha
# IQR = 16251 ha
#
# Interpretação:
# Aproximadamente 25% das observações estão até Q1, 50% até Q2
# e 75% até Q3. Os 50% centrais dos dados ocupam um intervalo
# de 16251 ha.


# 9. Verificação de possíveis outliers ------------------------
limite_inferior <- q1 - 1.5 * iqr
limite_superior <- q3 + 1.5 * iqr

outliers <- area[
  area < limite_inferior |
  area > limite_superior
]

cat("\n=== LIMITES PARA OUTLIERS (1,5 x IQR) ===\n")
cat("Limite inferior:", limite_inferior, "ha\n")
cat("Limite superior:", limite_superior, "ha\n")

if (length(outliers) == 0) {
  cat("Outliers identificados: nenhum.\n")
} else {
  cat("Outliers identificados:", paste(outliers, collapse = ", "), "\n")
}

# Com estes dados, nenhum valor ultrapassa os limites calculados.


# 10. Gráficos quantitativos ----------------------------------
# Os gráficos também são salvos na pasta graficos/.

dir.create("graficos", showWarnings = FALSE)

# Histograma
png(
  filename = file.path("graficos", "histograma.png"),
  width = 1200,
  height = 800,
  res = 120
)

hist(
  area,
  main = "Distribuição da área dos estabelecimentos agropecuários",
  xlab = "Área dos estabelecimentos (ha)",
  ylab = "Frequência"
)

dev.off()

# Boxplot
png(
  filename = file.path("graficos", "boxplot.png"),
  width = 1200,
  height = 800,
  res = 120
)

boxplot(
  area,
  main = "Boxplot da área dos estabelecimentos agropecuários",
  ylab = "Área dos estabelecimentos (ha)"
)

dev.off()

# Interpretação dos gráficos:
# - o histograma mostra maior concentração de observações nas faixas
#   intermediárias e presença de valores mais altos;
# - o boxplot não apresenta pontos isolados fora dos bigodes;
# - isso é compatível com a verificação numérica de ausência de outliers.


# 11. Variável qualitativa ordinal ----------------------------
# Grupo_Area é qualitativa ordinal porque representa categorias
# com ordem natural crescente de tamanho.

dados$Grupo_Area <- factor(
  dados$Grupo_Area,
  levels = c(
    "De 20 a menos de 50 ha",
    "De 50 a menos de 100 ha",
    "De 100 a menos de 200 ha"
  ),
  ordered = TRUE
)

frequencia_grupo <- table(dados$Grupo_Area)

cat("\n=== FREQUÊNCIA DA VARIÁVEL QUALITATIVA ===\n")
print(frequencia_grupo)

# Cada categoria possui 10 observações porque a base foi construída
# com os mesmos 10 municípios para cada uma das três faixas.
# Isso NÃO significa que existam quantidades iguais de estabelecimentos
# nas três faixas; representa apenas a estrutura da amostra utilizada.


# 12. Gráfico da variável qualitativa -------------------------
png(
  filename = file.path("graficos", "grafico_qualitativo.png"),
  width = 1200,
  height = 800,
  res = 120
)

barplot(
  frequencia_grupo,
  names.arg = c(
    "20 a < 50 ha",
    "50 a < 100 ha",
    "100 a < 200 ha"
  ),
  main = "Distribuição dos grupos de área",
  xlab = "Grupo de área",
  ylab = "Frequência",
  ylim = c(0, 12)
)

dev.off()


# 13. Resumo final --------------------------------------------
cat("\n=== RESUMO DA ANÁLISE ===\n")
cat("Observações analisadas:", length(area), "\n")
cat("Média da área:", round(media_area, 2), "ha\n")
cat("Mediana da área:", round(mediana_area, 2), "ha\n")
cat("Desvio padrão:", round(desvio_padrao, 2), "ha\n")
cat("Q1:", q1, "ha\n")
cat("Q2:", q2, "ha\n")
cat("Q3:", q3, "ha\n")
cat("Outliers pelo critério 1,5 x IQR:", length(outliers), "\n")
cat("Gráficos salvos na pasta 'graficos'.\n")

# Conclusão:
# A variável de área apresentou média de aproximadamente 24,7 mil ha
# e mediana de aproximadamente 22,8 mil ha. A diferença entre as duas
# sugere influência de valores maiores na distribuição, mas sem valores
# classificados como outliers pelo critério de 1,5 x IQR.
#
# Os 50% centrais das observações ficam entre aproximadamente
# 16,5 mil ha (Q1) e 32,7 mil ha (Q3).
#
# A variável Grupo_Area possui três categorias ordinais e cada categoria
# aparece 10 vezes, consequência do desenho da base com 10 municípios
# repetidos nas três faixas de área.
