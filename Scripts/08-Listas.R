#CRIANDO LISTAS
#para criar uma lista usar o comando list()

#LISTA DE STRINGS
lista_caracter1 <- list("A","B","C")
lista_caracter1

lista_caracter2 <- list(c("A","B"), "C","E")
lista_caracter2

lista_caracter3 <- list(matrix(c("A","A","A","A"), nr =2), "B", "C")
lista_caracter3

#LISTA COMPOSTA
set.seed(10)
lista1 <- list(1:10, c("Pelé", "Ronaldo", 1, "Renato"),rnorm(10))
lista1

# FATIAMENTO DA LISTA (Slicing)
lista1[1]
lista1[[1]][2] #segundo elemento da lista 1
lista1[2]
lista1[[2]][1] #primeiro elemento da lista 2
lista1[[2]][3] = "Christian" #substitui o terceiro elemento da 2ª lista por Christian
lista1[2]

# PARA NOMEAR OS ELEMENTOS - LISTAS COM NOMES
names(lista1) <- c("inteiros", "caracteres", "números")
lista1

lista1$inteiros[1] # O "$" chama os nomes da lista
lista1$caracteres

# UNIÃO 2 OU MAIS ELEMENTOS EM UMA LISTA
mat <- matrix(1:4, nrow =2)
mat

vec <- rep(1:9)
vec
lista2 <- list(mat,vec)
lista2

lista3 <- list(mat, vec, lista1) #lista dentro de lista
lista3
lista3 [[3]][[1]][2]
