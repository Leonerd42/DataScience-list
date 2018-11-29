library(readxl)
library(graphics)
dados <- read_excel("././dados/exercicio1.xls") #pegando os dados
#dados
dados <- as.data.frame(dados) 
#dados
dados$`Taxas de juros`
dados<- dados[order(dados$`Taxas de juros`),] 

pdf("././gráficos/ex1.pdf")

media <- mean(dados)
mediana <- median(dados)
statmod <- function(x) {
  z <- table(as.vector(x))
  names(z)[z == max(z)]
}
moda <- statmod(dados)

min <- min(dados)#min
max <- max(dados)#max
quartis <- quantile(dados)
quartil_1 <- quartis[1]#primeiro quartil
quartil_3 <- quartis[3] #terceiro quartil
plot(dados,main="Taxa de juros",type="l",ylim=range(seq(2.4,4,by=0.05))) #grafico média

abline(h=quartil_1,col="orange")
abline(h=quartil_3,col="green")
abline(h=media,col="blue")
abline(h=mediana,col="red")
abline(h=as.numeric(moda),col="gray")
abline(h=min,col="yellow")
abline(h=max,col="purple")
legend(1, 4, legend=c("Dados","Quartil 1","Quartil 3","Média", "Mediana","Moda","Minimo","Maximo","Quantil 1","Quantil 2"),
       col=c("orange","green","black","blue", "red","gray","yellow","purple"), lty=1, cex=0.6)

plot(dados,main="Variâncias",type="l",ylim=range(seq(0,0.2,0.005))) #grafico média

abline(h=sd(dados),col="blue") 
abline(h=var(dados),col="red")
legend(1, 0.2, legend=c("desvio padrão","variância"),
       col=c("blue","red"), lty=1, cex=0.8)
dev.off() 