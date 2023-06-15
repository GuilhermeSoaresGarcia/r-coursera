id <- c(1:10)
nome <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
id_cargo <- c("Profissional", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador")
empregado <- data.frame(id, nome, id_cargo)

#Separa o campo "nome" em dois (nome e sobrenome)
#A função "unite" faz o oposto, mas a sintaxe é similar
separate(empregado, nome, into = c("primeiro_nome", "sobrenome"), sep = " ")

