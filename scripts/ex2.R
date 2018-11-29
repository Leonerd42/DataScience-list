library(readxl)

dados <- read_excel("././dados/exercicio2.xls") #pegando os dados
#dados
dados$Casas
teste <- as.numeric(dados$Casas)
tabela <- table(dados$Casas)
tabela
mean(as.numeric(dados$Casas))
names(tabela)
aaa <- c(names(tabela))
as.numeric(aaa)
c(as.numeric(aaa))
tabela
rev(tabela[nrow(tabela):1,])
media <- mean(teste)
mediana <- median(teste)
statmod <- function(x) {
  z <- table(as.vector(x))
  names(z)[z == max(z)]
}
moda <- statmod(teste)
moda
min <- min(teste)#min
max <- max(teste)#max
quartis <- quantile(teste)
quartil_1 <- quartis[1]#primeiro quartil
quartil_3 <- quartis[3] #terceiro quartil
grafico <- media
grafico <- c(grafico,as.numeric(moda))
grafico <- c(grafico,mediana)
grafico <- c(grafico,min)
grafico <- c(grafico,max)
grafico
grafico <- c(grafico,var(teste))
grafico <- c(grafico,sd(teste))

nomes <- c("Média","Moda","Mediana","Min","Max","Variância","Desvio Padrão")
nomes
pdf("././gráficos/ex2.pdf")
barplot(grafico,names.arg = nomes,col=rainbow(7),cex.names=0.7)
dev.off()
