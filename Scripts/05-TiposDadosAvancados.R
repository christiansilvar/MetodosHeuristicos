#TIPOS DE DADOS AVANÇADOS EM R

# Vetor: Possui 1 dimensão e 1 tipo de dado
vetor1 <- c(1,2,3,4)
vetor1
vetor1 <- c(1:20)
vetor1
length(vetor1)
class(vetor1)
mode(vetor1)
typeof(vetor1)

# Matriz: Possui 2 dimensões e 1 tipo de dado
matriz1 <- matrix(1:20, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)

# Array: Possui 2 ou mais dimensões e 1 tipo de dado
array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)

# Data Frames: Dados de diferentes tipos (numeric, charact)
View(iris)
length(iris)
iris <- iris
mode(iris)
class(iris)

# Listas: Coleções de diferentes objetos
lista1 <- list(a = matriz1, b = vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)

# Função também são objetos em R
func1 <- function(x) {
  var1 <- x * x
  return(var1)
}
func1(5)


func2 <- function(x,y){
  var1 <- x * y
  return(var1)
}
func2(5,3)

# Equação de 2ª grau - Bhaskara
func3 <- function(a,b,c) {
  delta <- (b * b) - (4 * a * c)
  x1 <- (-b + sqrt(delta)) / (2 * a)
  x2 <- (-b - sqrt(delta)) / (2 * a)
  return(c(x1,x2))
}
a <= 3
b <= 10
c <= 2

func3(a,b,c)

