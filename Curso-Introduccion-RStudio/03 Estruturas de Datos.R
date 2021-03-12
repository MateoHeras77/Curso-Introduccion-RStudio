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


#Importaciones de datos:

data<- read.csv( file="/Users/mateoherasvera/Desktop/GitHub/Curso-Introduccion-RStudio/Recursos/inmigintnalpry.csv",
                 header = TRUE, #Encabezado
                 fileEncoding = "latin1") #Asignamos la ñ
View(data)
data <- read.table(file="/Users/mateoherasvera/Desktop/GitHub/Curso-Introduccion-RStudio/Recursos/inmigintnalpry.csv",
                   header = TRUE,
                   sep = ",",
                   fileEncoding = "latin1")

#Segmentacion de datos

inicial <- data[1:100,]
sapply(data,class) #tipo de datos para cada variable

#Valores faltantes
sapply(data, function(x) sum(is.na(x))) #NA
sapply(data, function(x) sum(x==0)) # Sume los valores nulos asociados

#Clases de las variables
class(data)
str(data)


#Directorio
setwd("/Users/mateoherasvera/Desktop/GitHub/Curso-Introduccion-RStudio/Curso-Introduccion-RStudio")
Squid <- read.table(file = "/Users/mateoherasvera/Desktop/GitHub/Curso-Introduccion-RStudio/Recursos/squidGSI.txt",
                    header = TRUE) #Por defecto los decimales son puntos
str(Squid)
names(Squid)
 Squid$Sample <- NULL #Eliminamos una columna

 Squid <- read.table(file = "/Users/mateoherasvera/Desktop/GitHub/Curso-Introduccion-RStudio/Recursos/squidGSI.txt",
                     header = TRUE, dec = ",") #Coloca los decimales con coma (ERROR)
 
 #Media
 sapply(Squid, function(x) sum(is.na(x))) #Valores Faltantes
 sapply(Squid, function(x) sum(x==0)) #Valores nulos
 
mean(Squid$GSI, na.rm = F) #No hay valores faltanes ni nulos
boxplot(Squid$GSI ~ factor(Squid$Location)) #Boxplot con respecto (~) a:

#Indexacion de datos

Squid$Sex #Forma Vectorial
Squid["Sex"] #Forma de un DF
View(Squid["Sex"])
unique(Squid$Sex)

Sel <- Squid$Sex ==1
Sel # Obtengo un booleano
Sel <- Squid[Squid$Sex==2,]
Sel <- Squid[Squid$Sex==1 & Squid$Location==1,]

#Ordenar datos
Ord <- order(Squid$Sex , Squid$Month) #Posicion de orden
unique(Squid$Month)
unique(Ord)
Squid0 <- Squid[Ord,] #Ordenado por mes
View(Squid0)


#Cambiar el tipo de variable: Numerico a Factor

str(Squid)
sapply(Squid, class)

Squid$flocation <- factor(Squid$Location, labels = c("N","S","E","O"))
#Squid$flocation <- factor(Squid$Location, leves = c("1,2,3,4))

str(Squid)
sapply(Squid, class)

unique(Squid$Sex) #Ayuda a definir los labels
Squid$fSex <- factor(Squid$Sex , labels = c("Mujer","Hombre"))
str(Squid)
sapply(Squid, class)

#Fusion de DataFrames

Sqt1 <- read.table(file = "", header = F)
Sqt2 <- read.table(file = "", header = T)
#merge
SquidMerge <-merge(Sq1,Sq2, by = "Sample", all=TRUE)#Ver Variable en comun / Todas las obersaviones
#Exportaciones
?write.table
write.table(SquidMerge, file= "Datos.txt", sep=" ",
            quote = FALSE, #NO hay comillas
            append = FALSE, na=NA)#No me una a otro archivo







