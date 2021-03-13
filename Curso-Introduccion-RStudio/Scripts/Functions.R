#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Functions
#===============================================================================

# FUNCION SUCESOR
sucesor <- function(num){
num2 <- num + 1
num2
}
sucesor(11) # HACER LLAMADO A LA FUNCION SUCESOR
# FUNCION CUADRADO
cuadrado <- function(val = 8){
Cval <- val^2
Cval
}
cuadrado(9)
cuadrado(12)
cuadrado()
cuadrado(13) # HACER LLAMADO A LA FUNCION CUADRADO
# FUNCION DIFERENCIA CUADRADO
diferencia_cuadrado <- function(y = 8, x = 6){
dif_val <- y^2 - x^2
dif_val
}
diferencia_cuadrado()
diferencia_cuadrado(6, 4)
diferencia_cuadrado(y = 10, x = 9)
diferencia_cuadrado(x = 9, y = 10)
diferencia_cuadrado(y = 10, x = 11) # HACER LLAMADO A LA FUNCION DIFERENCIA CUADRADO
# FUNCION DIFERENCIA CUADRADO CON VALOR ABSOLUTO EN LA OPERACION DESCRITA
diferencia_cuadrado <- function(y = 8, x = 6){
dif_val <- y^2 - x^2
abs(dif_val)
}
diferencia_cuadrado(y = 10, x = 11) # HACER LLAMADO A LA FUNCION 
# HACER LLAMADO AL DATASET USArrests
data(USArrests)
View(USArrests)
str(USArrests) # MUESTRA LA ESTRUCTURA INTERNA DEL DATAFRAME USArrests
n <- dim(USArrests)
n
n[2]
sapply(USArrests, function(x) sum(is.na(x))) # na.rm = TRUE; mean, sd, var, length
sapply(USArrests, function(x) sum(x == 0)) # No hay valores faltantes por columna
media_col <- function(x){
media <- sum(x)/length(x)
media
}
round(media_col(USArrests$Murder), digits = 2)
round(media_col(USArrests$Assault), digits = 2)
round(media_col(USArrests$UrbanPop), digits = 2)
round(media_col(USArrests$Rape), digits = 2)
round(media_col(USArrests$Murder), 2)
names(USArrests)
mean(USArrests$Murder)
round(sd(USArrests$Murder), digits = 2)
# LOOPS
for (i in 1:n[2]){
media <- mean(USArrests[,i])
media <- round(media, digits = 2)
print(media)
}
USArrests[,1]
# GRAFICAS
regreg <- lm(Rape ~ Murder, data = USArrests)
plot(x = USArrests$Murder, y = USArrests$Rape, pch = 19, xlab = "Murder", ylab = "Rape")
abline(regreg, lty = 1, lwd = 2, col = "darkblue")
summary(regreg)