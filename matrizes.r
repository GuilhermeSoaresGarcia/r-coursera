#Matriz é uma coleção bidimensional de elementos de dados, ou seja, tem linhas e colunas. Em contrapartida, um vetor é uma sequência unidimensional de elementos de dados. Mas, assim como os vetores, as matrizes contêm apenas um tipo de dado. Por exemplo, a matriz não pode incluir valores lógicos e numéricos juntos. 
#Para criar uma matriz em R, use a função matrix(), que tem dois principais argumentos que você insere entre os parênteses. Primeiro, adicione um vetor, que contém os valores a serem colocados na matriz. Em seguida, adicione, ao menos, uma dimensão de matriz. Você pode especificar o número de linhas ou de colunas com o código nrow = ou ncol =, respectivamente. 
#Digamos, por exemplo, que você quer criar uma matriz 2x3 (duas linhas e três colunas) com os valores 3-8. Primeiro, insira um vetor com essa sequência de números: c(3:8) e, em seguida, adicione uma vírgula. Por fim, digite nrow = 2 para especificar o número de linhas. 
matrix(c(3:8), nrow = 2)

#Você pode especificar o número de colunas (ncol = ) ao invés de linhas (nrow = ).
matrix(c(3:8), ncol = 2)
