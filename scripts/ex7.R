library(readxl)
dados <- read_excel("././dados/exercicio7.xls") #pegando os dados
dados
numeros <- dados$Atendimento
pdf("././gr�ficos/ex7.pdf")
barplot(numeros,names.arg = dados$�reas,cex.names=0.9)
dev.off()
