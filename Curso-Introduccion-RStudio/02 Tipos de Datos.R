#Operador de asignacion
x <- 5+9
5+91 -> x

#Construir vectores
y <- c(45,65,23)
print(y)

#Secuencias
1:100
seq(from=1, to =100, by=2)

#Operaciones entre vectores
c(1.1,2.2,3.3,4.4) - c(1,2,3,4)
  #Si el tamano no es el mismo, R repite el vector mas pequeno hasta alcanzar el tamano necesario

ls() #Muestra todos los objetos disponibles

#Caracteres o String
"Hola Mundo"
colores <- c("Azul", "Verde", "Rojo")
colores

#Numeros Complejos = a +bi
complejo <- 2 +5i
complejo

#Operadores
sqrt() #Raiz Cuadrada
abs() #Absoluto

  # & && and
  # | || or
  # > < == !=

#Cambiar tamano de un vector
length(complejo) <- 3
complejo

#Si una expresion es muy grande, el R regresa un (+-)Inf que es infinito
2^12340
0/0 
  #NaN Not a number
  #NA valores Faltantes
  #Null Vacio

#Fechas y Horas = Date, POSIXct, POSTXlt
Fecha_Hoy <- Sys.Date()
Fecha_Hoy
class(Fecha_Hoy)

#Vectores: Solo puede obtener objetos de la misma clase
vector("numeric", length =10)
vector("character", length =10)
vector("logical", length =10)

#Listas: pueden tener diferentes objetos
list(0,"Hola",TRUE)

#Matrices
m <- matrix(data = 1:12,3,4,)
m

#Factores
colores
factor(colores)
unique(colores) #me muestra las observaciones sin repeticiones

#DataFrame

data.frame(llave=y,color= colores) #Deben tener la misma cantidad de filas








