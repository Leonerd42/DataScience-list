#Exercicio 4

#Leitura dos dados 
library(readxl)
exercicio4 <- read_excel("./Dados/exercicio4.xls")

df <- subset(exercicio4, select =`Sal�rios`)

df$s = df$`Sal�rios`
df$`Sal�rios` = NULL

range(df$s)

breakS= seq(5, 12, by=1)
breakS

s.cut = cut(df$s, breakS,right=FALSE) 
s.freq = table(s.cut) 

sal=cbind(s.freq)

pdf("././gr�ficos/ex4.pdf")
hist(df$s,main = "Freq de sal�rios", xlab = "Sal�rio", ylab = "Freq",)
dev.off()
