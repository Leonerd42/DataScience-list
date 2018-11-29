library(readxl)
dados <- read_excel("././dados/exercicio7.xls") #pegando os dados
dados
numeros <- dados$Atendimento
pdf("././gráficos/ex7.pdf")
barplot(numeros,names.arg = dados$Áreas,cex.names=0.9)
dev.off()
