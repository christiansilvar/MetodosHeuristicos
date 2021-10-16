# ESTRUTURAS DE CONTROLE

# if-else
x = 20
if (x < 30)
{"Este número é menor que 30"} # As chaves não são obrigatórias, mas altamente recomendadas

# Else
x <- 8
if (x < 7) {"Este número é menor que 7"
} else {"Este número não é menor que 7"
}

# Comandos podem ser aninhados
x <- 7
if (x < 7) {
  "Este número é menor que 7"
} else if (x == 7) {
  "Este número é o 7"
} else {
  "Este número não é menor que 7"
}

# ifelse
x <- 9
ifelse (x < 6, "correto", NA)

# Expressão ifelse alinhadas
x <- c(7,5,4)
ifelse(x < 5, "Menor que 5",
       ifelse(x == 5, "Igual a 5", "Maior que 5"))

# Estrutura de if dentro de funções
func1 <- function(x,y){
  ifelse(y < 7, x + y, "Não encontrado")
}
func1(4,2)
func1(40,7)

# Rep
rep(rnorm(10),5)

# Repeat
x <- 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)}

# Loop for
for (i in 1:20) {
  print(i)
}
for (q in rnorm(10)) {
  print(q)  
}

# Ignorar elementos dentro do loop
for (i in 1:22) {
  if(i == 13 | i == 15)
    next
  print(i)
}

# Interromper o loop
for(i in 1:22) {
  if(i == 15)
    break
  print(i)
}

# Loop while
x <- 1
while(x < 5) {
  x = x + 1
  print(x)
}