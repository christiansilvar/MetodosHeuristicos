# Trabalhando com arquivos .txt

# Importando arquivos com read.table()
?read.table

df1 <- read.table("Pedidos.txt")
df1
dim(df1)
View(df1)

df1 <- read.table("Pedidos.txt", header = TRUE, sep = ",") # o Header, é usado para manter o nome da coluna qu está no arquivo
View(df1) #sep, separa o texto usando as ',' como divisores

df1 <- read.table("Pedidos.txt", header = TRUE, sep = ",",
                   col.names = c("var1", "var2", "var3"),
                  na.strings = c("Zico", "Maradona"),
                  stringsAsFactors = FALSE) # Troca o nome das colunas na 2ª linha, e na 3ª oculta o nome de Zico
# e Maradona por NA.

df1
str(df1)

# Importando arquivos com read.csv()
df2 <- read.csv("Pedidos.txt")
df2
dim(df2)

# Importando arquivos com read.csv2()
df3 <- read.csv2("Pedidos.txt")
df3
View(df3)

df3 <- read.csv2("Pedidos.txt", sep = ",")
df3
dim(df3)

# Importando Arquivos com read.delim()
df4 <- read.delim("Pedidos.txt")
df4
dim(df4)

df4 <- read.delim("Pedidos.txt", sep = ",")
df4
dim(df4)

# Importando / Exportando

# Gerando arquivo
write.table(mtcars, file = 'mtcars.txt')
dir() # mostra os arquivos que estão dentro do diretório de trabalho
getwd() # mostra o local do diretório na maquina

df_mtcars <- read.table("mtcars.txt")
df_mtcars
View(df_mtcars)

write.table(mtcars, file = "mtcars2.txt", sep = "|",
            col.names = NA, qmethod = "double")

list.files() # mostraa os arquivos dentro do diretório também
dir()

read.table("mtcars2.txt")

df_mtcars2 <- read.table("mtcars2.txt", sep = '|')
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = '|', encoding = 'UTF-8')
df_mtcars2

df_mtcars2 <- read.table("mtcars2.txt", sep = '|', header = TRUE, encoding = 'UTF-8')
df_mtcars2

df_mtcars2[1,1]
