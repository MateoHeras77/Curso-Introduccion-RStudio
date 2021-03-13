#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Read & write code
#===============================================================================

data <- read.csv(file = "C:\\Users\\USUARIO\\OneDrive - Escuela Superior Politécnica del Litoral\\Archivos adjuntos\\Métodos de analítica para la industria\\swirl_temp\\inmigintnalpry.csv",
                 header = TRUE, fileEncoding = "latin1")
data <- read.table(file = "C:\\Users\\USUARIO\\OneDrive - Escuela Superior Politécnica del Litoral\\Archivos adjuntos\\Métodos de analítica para la industria\\swirl_temp\\inmigintnalpry.csv",
                   header = TRUE, sep = ",", fileEncoding = "latin1")
?read.csv
View(data)
inicial <- data[1:100, ]
View(inicial)
clases <- sapply(inicial, class)
sapply(inicial, function(x) sum(is.na(x))) # NA
sapply(inicial, function(x) sum(x==0)) # Valores nulos
sapply(data, function(x) sum(x==0))
clases
data1 <- read.table(file = "C:\\Users\\USUARIO\\OneDrive - Escuela Superior Politécnica del Litoral\\Archivos adjuntos\\Métodos de analítica para la industria\\swirl_temp\\inmigintnalpry.csv",
                    header = TRUE, sep = ",", fileEncoding = "latin1", colClasses = clases)
View(data1)
str(inicial)
num <- colnames(inicial)
length(colnames(inicial))
length(num)
plot(inicial)