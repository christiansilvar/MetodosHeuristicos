# CRIANDO MATRIZES

# NÚMERO DE LINHAS
matrix (c(1,2,3,4,5,6), nr = 2) #nr= número de linhas (number row)
matrix (c(1:6), nr = 2)
matrix (c(1:6), nr = 3)
matrix (c(1:6), nr = 6)

#NÚMERO DE COLUNAS
matrix(c(1:6), nc = 2) #nc= número de colunas (number col)

help("matrix")

# Matrix precisa um número de elementos que seja múltiplos do número de linhas
matrix(c(1:6), nr=2)
matrix(C(1:5), nr=2) #da um aviso, que algo esta errado


# CRIANDO MATRIZES A PARTIR DE VETORES E PREENCHENDO A PARTIR DE LINHAS
dados <- rep(1:10)
dados
matrix(data = dados, nrow = 5, ncol = 2, byrow = T)
matrix(data = dados, nrow = 5, ncol = 2)

#FATIANDO A MATRIX
mat <- matrix(c(2:5), nr = 2)
mat
mat[1,2] #linha 1, coluna 2
mat[2,2] #linha 2, coluna 2
mat[,2] #somente coluna 2
View(iris)
iris[,2]
mean(iris[,2])
hist(iris[,2])


# TRANSPONDO A MATRIX
m <- matrix(c(2,4,5,12), nr = 2, nc =2)
m
t(m)

# NOMEANDO A MATRIX
m1 <- matrix(c("Física","Termo","Matemática","PO"), nr = 2)
m1

dimnames(m1) <- (list( c("Linha1","Linha2"), c("Coluna1","Coluna2")))
m1

#INDEXANDO LINHAS E COLUNAS NO MOMENTO DA CRIAÇÃO DA MATRIX
matrix(c(1:4), nr = 2, dimname = list(c("Linha1", "Linha2"), c("Coluna1","Coluna2")))

#COMBINANDO MATRIZES

m2 <- matrix(c(2:5), nr = 2)
m2
m3 <- matrix(c(6:9), nr = 2)
m3

m4 <- rbind()