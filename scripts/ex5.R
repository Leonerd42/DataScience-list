#Exercicio 5

#Leitura dos dados 
library(readxl)
exercicio5 <- read_excel("./Dados/exercicio5.xls")


df <- subset(exercicio5, select =`Marcas`:`N� pessoas`)

df$nP = df$`N� pessoas`
df$`N� pessoas` = NULL

rowNames <- c("A", "B", "C", "D", "E")
pdf("././gr�ficos/ex5.pdf")
barplot(df$nP, names.arg = rowNames, beside = TRUE)
dev.off()


