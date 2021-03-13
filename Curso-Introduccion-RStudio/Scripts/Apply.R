#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : tapply, sapply, lapply
#===============================================================================

# tapply, sapply, lapply
data(attenu)
View(attenu)
# Funcion sapply
sapply(attenu, function(x) sum(is.na(x))) # station tiene 16 missing values
sapply(attenu, function(x) sum(x == 0, na.rm = TRUE)) # na.remove
str(attenu)
# tapply
unique(attenu$event)
tapply(X = attenu$dist, INDEX = attenu$event, FUN = mean)
tapply(X = attenu$dist, INDEX = attenu$station, FUN = mean)
# lapply
lista <- lapply(X = attenu$dist, INDEX = attenu$event, FUN = mean)
unlist(lista) -> lista
lista
lista <- lapply(X = attenu, function(x) sum(is.na(x)))
unlist(lista) -> lista
lista