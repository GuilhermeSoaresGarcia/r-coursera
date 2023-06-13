#Instalação do pacote (caso não esteja instalado)
#install.packages("dplyr")

#Importação do pacote
library(dplyr)

#Importação dos dados
data("ToothGrowth")

#Visualizar os dados completos
#View(ToothGrowth)

#Aplicar função filter (do pacote "dplyr"), mostrando apenas os dados em que a 
#coluna "dose" seja igual a 0.5 e armazena na variável "filtered_tg"
filtered_tg <- filter(ToothGrowth, dose==0.5)

#Visualização dos dados filtrados através da variável "filtered_tg"
View(filtered_tg)

#Ordernar pela coluna "len"
arrange(filtered_tg, len)

#Usando "pipes", ao invés de fazer nesting, é possível encadear a ordem das 
#funções utilizando %>% (seria um "then")
filtered_tootgrouwth_with_pipe <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
View(filtered_tootgrouwth_with_pipe)
  
#Aqui, filtra-se os resultados com "dose = 0.5" e depois se usa o group_by
#para agrupar os resultados de acordo com a coluna "supp". O "summarize" serve
#para criar um sumário com as entradas no campo indicado (no caso deste data set, 
#são 2: OJ e VC) 
filtered_tootgrouwth_with_pipe <- ToothGrowth %>% 
  filter(dose==0.5) %>%
  group_by(supp) %>% 
  summarise(mean_lean = mean (len, na.rm = T),.group="drop")
View(filtered_tootgrouwth_with_pipe)