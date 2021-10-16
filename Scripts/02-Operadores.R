# Operadores Básicos, Relacionais e Lógicos em R

#Para executar
#Ctrl+Enter ou clicar na linha e clicar em run

# Operadores básicos

# Soma
5 + 5

# Subtração
7 - 3

# Multiplicação
5 * 3

# Divisão
5 / 3

# Potência, 2 maneiras de fazer
3 ^ 2
3 ** 2

# Raiz Quadrada
sqrt(4)

#Módulo
16 %% 3

# OPERADORES RELACIONAIS
x <- 7 #<- ou =
y <- 5
x + y

# OPERADORES
x > 7
x < 8
x <= 8
x >= 8
x == 8
x != 8 # diferente

# OPERADORES LÓGICOS
# And = & será verdadeiro quando atender as duas anotações
(x==8) & (x==6)
(x==7) & (x>=5)
(x==8) & (x==7)

# Or = | 
(x==8) | (x>5)
(x==8) | (x>=5)

# Not
x > 8
print(!x>8)