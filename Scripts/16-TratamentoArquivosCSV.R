# Trabalhando com arquivos CSV

# Usando o pacote readr
install.packages('readr')
library(readr)

# Abre o pront para escolher o arquivo
meu_arquivo <- read_csv(file.choose())
meu_arquivo

# Importando arquivos
df1 <- read_table("temperaturas.txt",
                  col_names = c("Dia", "Mes", "Ano", "Temperatura"))

dir()

head(df1)
View(df1)
str(df1)

read_lines("temperaturas.txt", skip = 0, n_max = -1L)

read_lines("temperaturas.txt")

# Exportando e Importando
write_csv(iris, "iris.csv")
dir()

View(iris)

df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setose", "versicolor", "virginica"))
))

dim(df_iris)
str(df_iris)

# Manipulando arquivos csv
df_cad <- read_csv("cadastro.csv")
View(df_cad)
class(df_cad)

install.packages("dplyr")
library(dplyr)
options(warn = -1) #retira avisos de "Warning"

df_cad <- tbl_df(df_cad)
head(df_cad)
View(df_cad)

write.csv(df_cad, "df_cad_bkp.csv") # white salva o arquivo pelo R






















