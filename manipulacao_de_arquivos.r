#Criação de diretório
dir.create("~/Git/r-coursera/teste")
dir.create("~/Git/r-coursera/teste-novo")

#Criação de arquivo - retorna TRUE quando bem sucedido
file.create("~/Git/r-coursera/teste/teste_arquivo.txt")

#Copiar arquivo
file.copy("~/Git/r-coursera/teste/teste_arquivo.txt", "~/Git/r-coursera/teste-novo/")

#Excluir arquivos (exclui arquivos e diretórios, com opção de modo recursivo)
unlink("~/Git/r-coursera/teste/", recursive = TRUE)
unlink("~/Git/r-coursera/teste-novo/", recursive = TRUE)

