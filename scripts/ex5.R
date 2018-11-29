#Exercicio 5

#Leitura dos dados 
library(readxl)
exercicio5 <- read_excel("./Dados/exercicio5.xls")


df <- subset(exercicio5, select =`Marcas`:`Nº pessoas`)

df$nP = df$`Nº pessoas`
df$`Nº pessoas` = NULL

rowNames <- c("A", "B", "C", "D", "E")
pdf("././gráficos/ex5.pdf")
barplot(df$nP, names.arg = rowNames, beside = TRUE)
dev.off()


