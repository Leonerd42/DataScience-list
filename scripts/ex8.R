library(readxl)
dados <- read_excel("././dados/exercicio8.xls") #pegando os dados
dados
dados$`Altura dos pacientes`
dados$X__9
numeros <- dados$`Altura dos pacientes`
numeros <- c(numeros,dados$X__1)
numeros <- c(numeros,dados$X__2)
numeros <- c(numeros,dados$X__3)
numeros <- c(numeros,dados$X__4)
numeros <- c(numeros,dados$X__5)
numeros <- c(numeros,dados$X__6)
numeros <- c(numeros,dados$X__7)
numeros <- c(numeros,dados$X__8)
numeros <- c(numeros,dados$X__9)
numeros
pdf("././gráficos/ex8.pdf")
hist(numeros)
dev.off()
