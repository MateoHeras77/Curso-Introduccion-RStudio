#Estructuras de Datos

vector_1 <- seq(from=11, to=30, by=1)
vector_1

#Posicion de un vector: Empieza desde 1
vector_1[3]
vector_1[1:3]
vector_1[seq(from=1, to=3, by=1)]
vector_1[c(4,6,3)] #No es necesario que este ordenado
vector_1[-9:-15] #Regresa todos los valores exceptuando esos

#Repeticiones
rep(c(TRUE,FALSE),10)
rep(10,each=3)
rep(c("Hola","Mundo"), each=5)

#Areglos: dim(Fila, Columna, Arreglo)
arreglo_1 <- array(seq(from=1,to=18,by=1),dim = c(3,3,2))
arreglo_1[1,3,2]
arreglo_1[1:2,1:2,2]

#Matrices: Fila x Columna
matriz_1 <- matrix(data=1:9, 3,3,byrow = TRUE)
matriz_1[1,]
matriz_1[,1]
matriz_1[2:3,]
matriz_1[c(1,3),]

#Listas: Tiene objetos de diferentes clases ; tambien pueden ser una lista de listas

carro <- list(color = "rojo", nllantas = 4 , marca = "KIA", ncil = 4)
carro

carro$color
carro[c("color", "nllantas")]

camioneta <- list(color = "verde", nllantas = 42 , marca = "BMW", ncil = 24)
cochera <- list(carro, camioneta)
cochera

#DataFrame
data(cars)
cars
cars$speed
#Encontrar valores de un DF
names(cars)
cars$dist >100 #Booleano
cars$speed[cars$dist>100] # Valor
cars[cars$dist>100,]





