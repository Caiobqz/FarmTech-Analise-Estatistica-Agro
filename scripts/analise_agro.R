# NomeCompleto_RMxxxxx_faseX_cap7

# ============================================================
# FarmTech - Análise Estatística de Dados do Agro
# Roteiro guiado: complete os comandos e entenda cada resultado.
# Fonte planejada: IBGE / Censo Agropecuário 2017 / SIDRA 6880
# ============================================================

# 1. Pacotes -------------------------------------------------
# OBJETIVO: usar um pacote capaz de ler arquivos .xlsx.
# DICA: pesquise o pacote readxl e a função usada para ler Excel.
# TODO: carregar somente os pacotes que realmente forem utilizados.


# 2. Importação da base ---------------------------------------
# Arquivo final esperado: dados/base_agro_fiap.xlsx
#
# PERGUNTA:
# Em qual objeto você quer guardar a tabela importada?
#
# TODO: escrever o comando de leitura do Excel.


# 3. Conferência inicial --------------------------------------
# Antes de calcular qualquer estatística, descubra:
# - quantas linhas existem;
# - quantas colunas existem;
# - quais são os nomes das colunas;
# - que tipo de dado o R atribuiu a cada coluna;
# - se existem valores ausentes.
#
# DICAS: procure por funções como dim(), names(), str() e summary().
# TODO: escrever e executar as verificações.


# 4. Variável quantitativa ------------------------------------
# Recomendação: Area_Estabelecimentos_ha
#
# PERGUNTA:
# Por que essa variável é quantitativa contínua?
#
# TODO: selecionar/referenciar a coluna que será analisada.


# 5. Tendência central ----------------------------------------
# A atividade exige medidas de tendência central.
#
# Faça:
# - média;
# - mediana;
# - moda.
#
# ATENÇÃO:
# O R base possui funções diretas para média e mediana, mas "mode()"
# não calcula a moda estatística. Você precisará pensar em como encontrar
# o valor mais frequente.
#
# TODO: implementar uma medida de cada vez e conferir o resultado.


# 6. Dispersão ------------------------------------------------
# Calcule e entenda:
# - mínimo;
# - máximo;
# - amplitude;
# - variância;
# - desvio padrão.
#
# PERGUNTA:
# O que um desvio padrão grande significaria neste conjunto de áreas?
#
# TODO: completar esta seção.


# 7. Separatrizes ---------------------------------------------
# Calcule:
# - Q1 (25%);
# - Q2 (50%);
# - Q3 (75%).
#
# DICA: procure como a função quantile() trabalha.
#
# TODO: completar esta seção e comparar Q2 com a mediana.


# 8. Gráficos quantitativos -----------------------------------
# Produza:
# - histograma;
# - boxplot.
#
# Os gráficos precisam ter títulos e identificação clara da variável.
#
# PERGUNTAS:
# - o histograma sugere assimetria?
# - o boxplot mostra possíveis outliers?
#
# TODO: criar os dois gráficos.


# 9. Variável qualitativa -------------------------------------
# Recomendação: Grupo_Area
#
# PERGUNTA:
# Por que essa variável é ordinal e não nominal?
#
# TODO: construir uma tabela de frequências.
# DICA: investigue a função table().


# 10. Gráfico qualitativo -------------------------------------
# Crie um gráfico de barras para a variável qualitativa.
#
# TODO: produzir o gráfico com título e categorias legíveis.


# 11. Interpretação final -------------------------------------
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
