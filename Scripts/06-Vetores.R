## VETORES DE STRING
vetor_caracter <- c("Unisinos","Engenharia","Produção")
vetor_caracter

#VETOR DE FLOAT
vetor_numerico <- c(1.90,45.3,300.5)
vetor_numerico

# UTILIZANDO seq()
vetor1 <- seq(1:10)
vetor1

# UTILIZANDO seq(from, to, length=comprimento)
vetor4 <- seq(5, 100, length=20)
vetor4

#UTILIZANDO rep()
vetor2 <-rep(1:10)
vetor2

# INDEXAÇÃO DE VETORES
a <- rep(1:5)
a
a[1] #para ver o 1ª elemento do vetor
a[6] #como não existe o 6ª vetor da erro 'NA'

b <-c("Unisino","Engenharia","Produção")
b
b[1]
b[2]
b[3]
b[4]

# COMBINANDO VETORES
v1 <- c(2,4,6)
v2 <- c("aa","bb","cc","dd")
v3 <- c(v1,v2)
v3
v1

# OPERAÇÕES COM VETORES
x <- c(1,2,5,7)
y <- c(3,6,8,9)

x * 3
x + y
x - y
x * y
x / y
x ^ y
sqrt(x)