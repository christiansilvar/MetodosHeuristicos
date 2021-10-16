#Christian S. Rodrigues



# Lista de Exercícios

# Exercicio 1 - Crie uma função que receba os dois vetores abaixo como parâmetro, 
# converta-os em um dataframe e imprima no console

vec1 <- (10:13)
vec2 <- c("a", "b", "c", "d")

f1 <- function(x,y){
  var1 <- c(x,y)
  return(var1)
}
f1(vec1, vec2)

df1 <- data.frame(c(vec1, vec2))
df1


# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com 
# números inteiros e calcule a média de cada linha

m1 <- matrix(c(1:16), nrow = 4, ncol = 4)
m1

mean(m1[1,])
mean(m1[2,])
mean(m1[3,])
mean(m1[4,])


# Exercicio 3 - Considere o dataframe abaixo. 
# Calcule a média por disciplina e depois calcule a média de apenas uma disciplina
escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))

Media_Matematica <- mean(escola$Matematica)
Media_Geografia <- mean(escola$Geografia)
Media_Quimica <- mean(escola$Quimica)

Media_Matematica
Media_Geografia
Media_Quimica

Media_Alan <- mean(as.numeric(escola[1,2:4]))
Media_Alice <- mean(as.numeric(escola[2,2:4]))
Media_Alana <- mean(as.numeric(escola[3,2:4]))
Media_Aline <- mean(as.numeric(escola[4,2:4]))
Media_Alex <- mean(as.numeric(escola[5,2:4]))
Media_Ajay <- mean(as.numeric(escola[6,2:4]))

Media_Alan
Media_Alice
Media_Alana
Media_Aline
Media_Alex
Media_Ajay


# Exercicio 4 - Crie uma lista com 3 elementos, todos numéricos 
# e calcule a soma de todos os elementos da lista
l1 <- list(Media_Matematica, Media_Geografia, Media_Quimica)
l1
sum(unlist(l1))


# Exercicio 5 - Transforme a lista anterior um vetor
v1 <- unlist(l1)
v1


# Exercicio 6 - Considere a string abaixo. Substitua a palavra "textos" por "frases"
str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")
str[5] = "e exploracao de frases"
str


# Exercicio 7 - Usando o dataset mtcars, crie um gráfico com ggplot do tipo 
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
data(mtcars)
View(mtcars)
plot(mtcars$mpg~mtcars$disp, xlab = "MPG", ylab = "Disp", main = "MPG por Disp - MTcars")


# Exercicio 8 - Considere a matriz abaixo.
# Crie um bar plot que represente os dados em barras individuais.
mat1 <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
mat1
barplot(mat1, beside = T,
        col = c("red", "violet","orange", "green", "yellow", "blue", "black",
                "purple", "gray", "gold", "brown", "pink"))


# Exercício 9 - Qual o erro do código abaixo?
#library("ggplot2")
data(diamonds)

# código original
ggplot(data = diamonds, aes(x = price, group = fill, fill = cut)) + 
  geom_density(adjust = 1.5)

# Código corrigido
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5)
#O erro está localizado em > group = fill, group tem que se referir a um objeto no dataframe
# e fill é uma configuração estética do ggplot, portanto não pode ser usado, o correto é usar um
# objeto do dataframe como o cut a exemplo.


# Exercício 10 - Qual o erro do código abaixo?
View(mtcars)
# Código original
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_barplot() +
  labs(fill = "cyl")

# Código corrigido
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() + labs(fill = "cyl")
# A função geom_barplot não existe, a função correta é somente geom_bar().



# Christian S. Rodrigues