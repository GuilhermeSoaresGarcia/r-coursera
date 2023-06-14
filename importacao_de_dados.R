library(readr)
library(readxl)
data(mtcars)

#Usando a função "read_csv" e arquivo exemplo contido no pacote
csv_file <- read_csv(readr_example("mtcars.csv"))
View(csv_file)


sheet_file <- read_excel(readxl_example("type-me.xlsx"))
View(sheet_file)
