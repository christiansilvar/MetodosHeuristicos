# Christian S. Rodrigues


# Lista de Exercícios

# Exercício 1 - Neste exercício gere um vetor que contenha 20 números inteiros
v1 <- seq(5, 100, length=20)
v1


# Exercício 2 - Crie uma matriz que contenha 5 linhas e 6 colunas com números inteiros
m1 <- matrix(c(1:30), nrow = 5, ncol = 6)
m1

# Exercício 3 - Desenvolva uma lista incluindo o vetor com a matriz gerada anteriormente
l1 <- list(v1, m1)
l1


# Exercício 4 - Por meio da função read.table() faça o download do arquivo contido no 
#link a seguir para uma dataframe -> http://data.princeton.edu/wws509/datasets/effort.dat
df <- data.frame((read.table(file = 'effort.dat.txt')))
df


# Exercício 5 - Nesta tarefa transforme o dataframe gerado anteriormente, em um dataframe
#que tenha os seguintes labels: c("config", "esfc", "chang")
colnames(df)[1] <- "config"
colnames(df)[2] <- "esfoc"
colnames(df)[3] <- "mudan"
df


# Exercício 6 - Imprima na tela o dataframe iris, examine quantas dimensões contém o
# dataframe iris, imprima o resumo do dataset.
print(iris)
View(iris)
nrow(iris)
ncol(iris)
str(iris)
summary(iris)


# Exercício 7 - Crie um gráfico (plot) simples usando as duas primeiras colunas do
#dataframe iris
#?plot
plot(iris$Sepal.Length, iris$Sepal.Width)


# Exercício 8 - Usando a função subset, gere um novo dataframe com o conjunto de dados do
# dataframe iris em que Sepal.Length > 7
#Dica: consulte o help para aprender como usar a c
#?subset
subset(iris, Sepal.Length > 7, drop = FALSE)


# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a
# função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Neste exercício você terá que instalar e carregar o pacote dplyr
# Dica 2: Use o o help para entender como usar a função slice()
#install.packages("dplyr") já instalado
library(dplyr)
#?subset
#?slice
ex9 <- iris
ex10 <- ex9 %>% slice_sample(n = 15, replace = FALSE)


# Exercícios 10 - Use a função filter no novo dataframe que você criou na atividade
# anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
#?filter
ex10 %>% filter(Sepal.Length > 6)
ex10


# Christian S. Rodrigues
