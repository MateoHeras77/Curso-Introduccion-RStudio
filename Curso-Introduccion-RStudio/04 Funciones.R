#Funciones

sucesor <- function(num=0) {
  #Valor por defecto: = 0
  num2 <- num+1
  num2 
  }
sucesor()

diferencia_Cuadrado <- function(y=0,x=0) {
  Dif_Val = abs(x^2 - y^2)
  Dif_Val
}
diferencia_Cuadrado(13,4)
diferencia_Cuadrado(x=13,y=4)

#Data USArrests

data(USArrests)
View(USArrests)

str(USArrests)
dim(USArrests)

sapply(USArrests, class)
sapply(USArrests, function(x) sum(is.na(x))) #na.rm=TRUE ; mean, sd, var; lenth
sapply(USArrests, function(x) sum(x==0))

media_col <- function(x) {
  media <- round(sum(x)/length(x), digits = 2)
  media
}

media_col(USArrests$Murder)
mean(USArrests$Murder)
round(sd(USArrests$Murder),2)

#Loops
n<- dim(USArrests) #Filas x Columnas
n
n[2] # valor de la segunda columna

USArrests[,2]

for (i in 1:n[2]) {
 media <- round(mean(USArrests[ ,i]), digits = 2)
 print(media)
}

#Graficas
regress <- lm(Rape ~ Murder, data= USArrests)
plot(x=USArrests$Murder,USArrests$Rape, pch= 19, xlab = "Murdes", ylab = "Rape") 
abline(regress, lty =1,lwd=2, col="dark blue")

summary(regress)

#tapply, sapply, lapply

data(attenu)

#sapply (Brinda informacion como arreglo)

sapply(attenu, class)
str(attenu)
unique(attenu$station)

sapply(attenu, function(x) sum(is.na(x))) # Stattion tiene 16 valores faltantes
sapply(attenu, function(x) sum(x==0)) 
sapply(attenu, function(x) sum(x==0 , na.rm = T)) #Valores faltantes ; No hay valores nulos

#tapply : me ayuda a sacar estadisticos con respecto a varias variables 
#(Brinda informacion como DataFrame)
unique(attenu$event)
tapply(X=attenu$dist, INDEX = attenu$event, FUN= mean) # Media de la dis por cada evento (solo mayusculas)
tapply(attenu$dist, attenu$station, FUN = mean) #Por default omite los NA

#lapply: (Brinda informacion como Lista)
lapply(X=attenu$dist, INDEX = attenu$event, FUN= mean) # Media de la dis por cada evento (solo mayusculas)
lista <-lapply(X = attenu, function(x) sum(is.na(x)))
unlist(lista) -> lista
lista







