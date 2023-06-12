#Instalação do pacote "tidyverse" (que contém o "lubridate")
#install.packages(“tidyverse”)

#Carregar/importar pacotes
library(tidyverse)
library(lubridate)

today()
now()

# Para a data 2021-01-20, use a ordem ymd:
# Ao executar a função, R retorna a data no formato aaaa-mm-dd.
ymd("2021-01-20")

#O mesmo vale para qualquer ordem; por exemplo, mês, dia e ano. R ainda retorna a data no formato aaaa-mm-dd.
mdy("January 20th, 2021")

#Ou dia, mês e ano. R ainda retorna a data no formato aaaa-mm-dd.
dmy("20-Jan-2021")

#Essas funções também processam números sem aspas e os converte no formato aaaa-mm-dd.
ymd(20210120)

#A função ymd() e suas variações criam datas. Para criar uma data-hora a partir de uma data, adicione um sublinhado e uma ou mais letras h, m e s (horas, minutos, segundos) ao nome da função:
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")

#Use a função as_date() para converter uma data-hora em data. Insira, por exemplo, a atual date-time—now()—entre os parênteses da função.
as_date(now())
