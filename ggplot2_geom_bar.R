library(ggplot2)

data("diamonds")

ggplot(data = diamonds,
       mapping = aes(
         x = cut,
         fill = cut
         )
       ) +
# A função "geom_bar()" utiliza apenas o eixo X pois o Y é definido automaticamente
# através do número de linhas existente na variável utilizada na plotagem
geom_bar() +
  labs(
    title = 'Quantidade de diamantes por tipo de corte',
    x = "Tipo de corte",
    y = "Quantidade"
    ) +
guides(fill = "none")

