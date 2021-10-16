##############################################################################
## Avaliação do GA Disciplina Métodos Heuristivos em Sistemas Produtivos
## Nomes:  Produtividade                                                             
## Aluno1: Christian S. Rodrigues                                          
## Aluno2: Jarbas L. C. Pereira Jr.
##############################################################################

# Este Dataset aborda o absenteísmo no trabalho. A partir do dataset, resolva:

## Dica em alguns casos, pesquise  funções da familia "apply"


# ------//------

dados <- data.frame((read.csv(file = 'productivity.csv', head = TRUE, sep = ",")))

# Tratamento dos dados, transformando NA = Zero
colSums(is.na(dados)) # Verifica e quantifica os NA's em cada coluna do Dataframe
dados[is.na(dados)] <- 0 # Substitui os valores NA por zero
any(is.na(dados)) # Verifica se há dados com NA, se False não possui, se TRUE possui no mínimo 1 dado com valor NA
View(dados)


# 1) Converta para fatores todas as features que seja viável a converter.
fac.dados <- factor(dados)
class(fac.dados)
is.ordered(fac.dados)


# 2) Qual dia da semana possui maior "wip" medio?
m_wip <- data.frame(tapply(dados$wip, dados$date, mean)); colnames(m_wip)[1] <- "WIP"
m_wip
pos <- which.max(m_wip[,'WIP']) # retornar posição do maior valor de WIP
apply(m_wip,2,max) # Retorna o maior valor de WIP
pos
# Nesta questão, não conseguimos ligar o maior wip direto a data, somento ao númedo da linha.
# este defeito se repete nas questões 3, 4 e 5.


# 3) Qual dia da semana possui maior "over_time" medio?
m_ov <- data.frame(tapply(dados$over_time, dados$date, mean)); colnames(m_ov)[1] <- "Over_Time"
m_ov
pos <- which.max(m_ov[,'Over_Time']) # retornar posição do maior valor de Over_Time
apply(m_ov,2,max) # Retorna o maior valor de Over_Time
pos


# 4) Qual dia da semana possui maior "idle_men" medio?
m_im <- data.frame(tapply(dados$idle_men, dados$date, mean)); colnames(m_im)[1] <- "Idle_Men"
m_im
pos <- which.max(m_im[,'Idle_Men']) # retornar posição do maior valor de Idle_Men
apply(m_im,2,max) # Retorna o maior valor de Idle_Men
pos


# 5) Qual quarter apresentou maior tempo medio ocioso? idle_time
m_it <- data.frame(tapply(dados$idle_time, dados$quarter, mean)); colnames(m_it)[1] <- "Idle_Time"
m_it
pos <- which.max(m_it[,'Idle_Time']) # retornar posição do maior valor de Idle_Time
apply(m_it,2,max) # Retorna o maior valor de Idle_Time
pos


# 6) Apresente um gráfico de barras com a ociosidade média por quarter.
dados2 <- as.matrix(sapply(m_it, as.numeric))
rownames(dados2) <- c("Quarte1","Quarte2","Quarte3","Quarte4","Quarte5")
dados2
barplot(dados2, beside = T, col = c("red", "yellow", "blue", "purple"))


# 7) Qual quarter teve maior produtividade média de acordo com o target?
m_tp <- data.frame(tapply(dados$targeted_productivity, dados$quarter, mean)); colnames(m_tp)[1] <- "Targeted_productivity"
m_tp
pos <- which.max(m_tp[,'Targeted_productivity']) # retornar posição do maior valor de Targeted_productivity
apply(m_tp,2,max) # Retorna o maior valor de Targeted_productivity
pos


# 8) Crie um gráfico que apresente a característica em relação ao incentivo financeiro oferecido.
plot(incentive ~ date, data = dados, type = "c",  col = "green")
m_i <- data.frame(tapply(dados$incentive, dados$quarter, mean)); colnames(m_i)[1] <- "incentive"
m_i
pos <- which.max(m_i[,'incentive']) 
apply(m_i,2,max) 
pos


# 9) Apresente um gráfico com a produtividade definida por dia para cada time (targeted_productivity). 
plot(targeted_productivity ~ date, data = dados, type = "c",  col = "gray")


# 10) Crie um subset dividindo o dataset entre os departamentos
#(department : Associated department with the instance)
sub_dep_swe <- subset(dados, department == "sweing")
sub_dep_fin <- subset(dados, department == "finishing")

View(sub_dep_swe)
View(sub_dep_fin)


# 11) Analise se existe relação entre a produtividade atual (actual_productivity) e alguma
#característica do dataset (por exemplo: número de trabalhadores por time, time,
#dia da semana, etc).

#install.packages("ggcorrplot")
#install.packages("ggplot2")
library(ggplot2)
library(ggcorrplot)

dados.c <- dados[,-c(1,2,3,4)]
View(dados.c)
correl <- round(cor(dados.c, dados.c$actual_productivity), 2)
ggcorrplot(correl, 
           lab = T,
           lab_size = 3)


##############################################################################
## Avaliação do GA Disciplina Métodos Heuristivos em Sistemas Produtivos
## Nomes:  Produtividade                                                             
## Aluno1: Christian S. Rodrigues                                          
## Aluno2: Jarbas L. C. Pereira Jr.
##############################################################################