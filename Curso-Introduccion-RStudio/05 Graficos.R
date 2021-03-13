#Graficos

if(!require("AER")) {install.packages("AER")}
library(AER)
data(package="AER") #Ver toda la base de datos que tiene el paquete
data("CPS1985")

sapply(CPS1985, class)
str(CPS1985)
summary(CPS1985)
sapply(CPS1985, function(x) sum(is.na(x)))
sapply(CPS1985, function(x) sum(x==0))
dim(CPS1985)
colnames(CPS1985)

#Histrogram
hist(CPS1985$wage)
attach(CPS1985) # Con esto ya no necesito especificar la base
p = hist(wage, ylim = c(0,300))
p
text(p$mids, p$counts, labels = p$counts, adj = c(0.5,-0.5), cex=1.05)

?hist

#regla de Sturges = 1 + log2(M) = 1 + log10(M)/log10(2)

p=hist(wage,
     breaks = 20,
     main = "Dist del Salario",
     xlab = "Salario",
     ylab = "Frecuencia")
p
text(p$mids, p$counts, labels = p$counts, adj = c(0.5,-0.5), cex=1.05)
palette()#Paleta de colores
?colors

hist(wage, #Frecuencia Absoluta
       breaks = 20,
       main = "Dist del Salario",
       xlab = "Salario",
       ylab = "Frecuencia",
     xlim = c(0,50),
     ylim = c(0,135),
     col = "blue",
     border = "white")
max(p$density)
p=hist(wage, #Frecuencia Relativa
     freq = FALSE,
     breaks = 20,
     main = "Dist del Salario",
     xlab = "Salario",
     ylab = "Frecuencia",
     xlim = c(0,50),
     ylim = c(0,0.12),
     col = "blue",
     border = "white")
p
text(p$mids, p$density, labels = round(p$density,3), adj = c(0.5,-0.5), cex=.5)

#Añadimos la curva normal
hist(wage, #Frecuencia Relativa
     freq = FALSE,
     breaks = 20,
     main = "Dist del Salario",
     xlab = "Salario",
     ylab = "Frecuencia",
     xlim = c(0,50),
     ylim = c(0,0.12),
     col = "blue",
     border = "white")
#Curvas empiricas
lines(density(wage, adjust = 1), col = "black", lwd = 3) #Se ajusta a los valores que tenemos
lines(density(wage, adjust = 2), col = "green", lwd = 3) #Suavizamiento
lines(density(wage, adjust = 3), col = "red", lwd = 5, lty=2) #Va incuyendo valores mas signifcativos

hist(wage, #Frecuencia Relativa
     freq = FALSE,
     breaks = 20,
     main = "Dist del Salario",
     xlab = "Salario",
     ylab = "Frecuencia",
     xlim = c(0,50),
     ylim = c(0,0.12),
     col = "blue",
     border = "white")
curve(dnorm(x, mean = mean(wage), sd(wage)), add=TRUE,col = "red", lwd=3) #Curva Normal
abline(v=mean(wage), lty=3 , lwd=2)
text(p$mids, p$density, labels = round(p$density,3), adj = c(0.5,-0.5), cex=.5)



#Diagrama de Cajas: BOXPLOT
?boxplot
attach(CPS1985)
names(CPS1985)
p <-boxplot(wage,
        main = "Salario",
        ylab = "Salario",
        col = "green",
        border = "blue")
summary(wage)
p

p <- boxplot(wage ~ gender,
        main = "Salario",
        ylab = "Salario",
        col = "green",
        names = c("Hombres", "Mujeres"),
        border = "blue")
p
length(p$out) == length(p$group)
max(p$out[8:length(p$out)])


#Subconjuntos

Dat_Muj <- subset(CPS1985 , gender == "female")
Dat_Hom <- subset(CPS1985 , gender == "male")


boxplot(wage ~ gender,
        horizontal = TRUE , #Orientacion del Grafico
        notch = TRUE,
        main = "Salario",
        ylab = "Salario",
        #col = "green",
        names = c("Hombres", "Mujeres"),
        border = "blue",
        col = rainbow(12, alpha = 0.6))

points(mean(Dat_Muj$wage),2, pch=25 , bg ="red", cex =1.5)
points(mean(Dat_Hom$wage),1, pch=25 , bg ="yellow", cex =1.5)

#Varias Segmentaciones
boxplot(wage ~ gender*occupation)




