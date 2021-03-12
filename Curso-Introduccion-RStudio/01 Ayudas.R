#Ayuda en RStudio

help.start() #Nos lleva al nevagor WEB
?print #Brinda ayuda de la funcion print en la WEB
help("print") #Equivalente linea previa

help(`+`) #Pedir ayuda de un operador

apropos("class") #todas las funciones relacionadas con el string

example("read.table") #Brinda ejemplos de la funcion.

??regression #En le WEB me indica PDF o PAPERS que usaron este comando
??ggplot2
help.search("regression")

library(help= "stats") #Muestra todas las funciones del paquete

#Vinetas es como se usa la funcion
vignette("test") #Me lleva a un pdf
vignette()




