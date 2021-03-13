#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Objects - Vectors
#===============================================================================

# La forma sencilla
mi_vector <- 11:30
# La forma mas divertida
mi_vector <- seq(from = 11, to = 30, by = 1)
mi_vector[3]
mi_vector[1:5]
mi_vector[seq(from = 1, to = 5, by = 1)]
mi_vector[c(4,6,13)]
mi_vector[c(6,13,4)]
mi_vector[[3]]
mi_vector[-9:-15]
rep(c(TRUE, FALSE), 10)
rep(10, each = 10)
rep(c("Hola", "Mundo"), each = 10)
mi_vector[rep(c(TRUE, FALSE), 10)]
length(mi_vector)
mi_vector[c(FALSE, FALSE, TRUE)]
mi_vector > 20
mi_vector[mi_vector > 20]
mi_arreglo <- array(seq(from = 1, to = 18, by = 1), dim = c(3,3,2))
mi_arreglo
mi_arreglo[1,3,2]
mi_arreglo[1:2,1:2,1]
mi_matriz <- matrix(data = 1:9, nrow = 3, ncol = 3)
mi_matriz
mi_matriz <- matrix(data = 1:9, byrow = TRUE, ncol = 3, bycol = TRUE)
mi_matriz
mi_matriz[1,]
mi_matriz[ ,1]
mi_matriz[2:3,]
mi_matriz[c(1,3), ]
carro <- list(colo = "rojo", nllantas = 4, marca = "Renault", ncilindros = 4)
carro
carro$colo
carro[c("ncilindros", "nllantas")]
carro[["marca"]]
carro$marca
carro[["mar", exact = FALSE]]
camioneta <- list(color = "azul", nllantas = 4, marca = "BMW", ncilindros = 6)
camioneta
(cochera <- list(carro, camioneta))
cochera[[c(2, 1)]]
data(cars)
View(cars)
names(cars)
cars$speed
cars$dist > 100
cars$speed[cars$dist > 100]
cars[cars$dist > 100,]