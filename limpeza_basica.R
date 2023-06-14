#install.packages("here")
#install.packages("skimr")
#install.packages("janitor")
#install.packages("palmerpenguins")
library(palmerpenguins)
library(here)
library(skimr)
library(janitor)
library(dplyr)

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

#Seleciona todas as colunas EXCETO "species"
penguins %>% 
  select(-species)

#Renomear uma coluna
penguins %>% 
  rename(island_new=island)

#Renomear as colunas (tudo uppercase)
rename_with(penguins, toupper)

#Renomear as colunas (tudo lowercase)
rename_with(penguins, tolower)

#Remove caracteres especiais das colunas
clean_names(penguins)