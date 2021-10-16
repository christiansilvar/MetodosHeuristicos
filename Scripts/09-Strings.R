# STRINGS
texto <- "Isto é uma String"
texto

x <- as.character(3,14)
x
class(x)

# CONCATENAR
nome <- "Christian"
sobrenome <- "Rodrigues"

paste(nome, sobrenome)
cat(nome,sobrenome)

# FORMATAÇÃO DE IMPPRESSÃO (placeholder)
sprintf("A %s é nota %d", "Unisinos",10)
?sprintf

sprintf("%.4f", pi)

# EXTRAIR PARTE DA STRING
texto <- "Isto é uma string"
substr(texto, start = 12, stop=17)

#ALTERAR O TIPO DE CAPITALIZAÇÃO
tolower("Unisinos é top") #tudo para minusculo
toupper("Unisinos é top") #tudo para maiusculo

# USANDO O PACOTE STRINGR
install.packages("stringr")
library(stringr)

# DIVISÃO DE CARACTERES
?stringr

strsplit("Unisinos é top", NULL)
strsplit("Unisinos é top", " ")
strsplit("Unisinos$é$top", "$")

