library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

acc$rf <- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, main = "accidentes en el aserradero",
        col = "blue")
mean(accidentes)
sum(accidentes)
boxplot(accidentes)


# ejercicio 2 -------------------------------------------------------------

especie <- c("F", "H", "F", "C", "F", "A", "H", "F",
             "H", "C", "A", "C", "F", "H", "H", "H",
             "F", "H", "A", "C", "F", "H", "H", "F")


esp <- count(especie)
esp

esp$fr <- esp$freq/sum(esp$freq)*100
esp
barplot(esp$freq, names.arg = esp$x, main = "especies", col = "blue")


# ejercicio 3 -------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

vecyesp <- table(conjunto$Vecinos, conjunto$Especie)
vecyesp


# ejercicio 4 -------------------------------------------------------------

altura <- (conjunto$Altura)
range(altura)

Intervalo <- seq(8, 21, by=4)
Intervalo

altura.table <- cut(altura, Intervalo)
table(altura.table)

altura.prop <- cbind(table(altura.table))
altura.per <- round(prop.table(altura.prop)*100,2)


# ejercicio 5 -------------------------------------------------------------

diametro <- conjunto$Diametro
range(diametro)

Intervalo <- seq(7.5, 25.5, by=2.5)
Intervalo

par(mfrow=c(1,2))
hist(conjunto$Diametro, main = "sin modificar", xlab = "diametro", col = "blue")
hist(conjunto$Diametro, breaks = Intervalo, main = "datos intervalos", col = "red")
par(mfrow=c(1,1))
 
