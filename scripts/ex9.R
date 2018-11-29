library(readxl)
dados <- read_excel("././dados/exercicio9.xls") #pegando os dados
numeros <- dados$Salários
numeros 
pdf("././gráficos/ex9.pdf")
amplitude <- max(numeros)-min(numeros)
amplitude<- 20/10
hist(numeros,breaks = 10)
dev.off()
