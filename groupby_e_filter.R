#install.packages("palmerpenguins")
library(palmerpenguins)
library(tidyverse)

data("penguins")

#Ordenação (é possível utilizar a função "desc(x)" também ao invés do sinal de menos)
penguins2 <- penguins %>% arrange(-bill_length_mm)
View(penguins2)

#Agrupa pela ilha, descarta os NA e faz a média, o valor máximo e o valor mínimo
#do tamanho dos bicos de cada agrupamento
penguins_new_data <- penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm),
            max_bill_length_mm = max(bill_length_mm),
            min_bill_length_mm = min(bill_length_mm)
            )
View(penguins_new_data)

#Agrupa por espécie e por ilha
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarise(max_bl = max(bill_length_mm),
            mean_bl = mean(bill_length_mm))

#Filtrar apenas por especie
penguins %>% filter(species == "Adelie")
