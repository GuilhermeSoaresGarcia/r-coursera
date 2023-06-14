#install.packages("tidyverse")
library(ggplot2)
library(dplyr)
data("diamonds")

#"head": visualizar as primeiras 10 linhas
View(head(diamonds))

#Para visualizar parâmetros do data frame (como tipos de dados ou nomes das colunas)
str(diamonds)
colnames(diamonds)

#"mutate" (função do "dplyr") cria uma nova coluna on-demand sem alterar o 
#data frame original
View(head(mutate(diamonds, carat_2=carat*100)))

