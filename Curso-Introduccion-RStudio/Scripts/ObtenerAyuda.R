#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Help
#===============================================================================

#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#En esta sesi�n conocer�s las principales herramientas que R tiene 
#para obtener ayuda.
#La primera herramienta que puedes usar para obtener ayuda es help.start(). 
#En ella encontrar�s un men�  de recursos, entre los cuales se encuentran 
#manuales, referencias y dem�s material para comenzar a aprender R.
help.start()
#Para usar help.start() escribe en la l�nea de comandos help.start(). 
#Pru�balo ahora:
#R incluye un sistema de ayuda que te facilita obtener informaci�n acerca 
#de las funciones de los paquetes instalados. Para obtener informaci�n 
#acerca de una funci�n, por ejemplo de la funci�n print(),debes escribir 
#?print en la l�nea de comandos.
?print
#Como puedes observar ? te muestra en la ventana Help una breve descripci�n 
#de la funci�n, de c�mo usarla, as� como sus argumentos, etc�tera.
#Asimismo, puedes usar la funci�n help(), la cual es un equivalente de ?. 
#Al utilizar help(), usar�s como argumento el nombre de la funci�n entre 
#comillas, por ejemplo, help("print")
#Para buscar ayuda sobre un operador, �ste tiene que encontrarse entre 
#comillas inversas. Por ejemplo, si buscas informaci�n del operador +, 
#deber�s escribir help(`+`) o ?`+` en la l�nea de comandos.
#Otra herramienta disponible es la funci�n apropos(), la cual recibe una 
#cadena entre comillas como argumento y te muestra una lista de todas las 
#funciones que contengan esa cadena. Int�ntalo: escribe apropos("class") en 
#la l�nea de comandos.
?apropos
apropos('class')
?class
apropos('print')
#Tambi�n puedes obtener ejemplos del uso de funciones con la funci�n example().
#Por ejemplo, escribe example("read.table").
example('read.table')
#Con eso tendr�s una idea de lo que puedes hacer con esta funci�n.
#R te permite buscar informaci�n sobre un tema usando ??. Por ejemplo, podemos escribir ??regression en la l�nea de comandos.
??regression
??ggplot2
#Esta herramienta es muy �til si no recuerdas el nombre de una funci�n, ya que R te mostrar� una lista de temas relevantes en la venta Help. An�logamente, puedes usar la funci�n help.search("regression").
help.search("regression")
#Otra manera de obtener informaci�n de ayuda sobre un paquete es usar la opci�n help para el comando library, con lo cual tendr�s informaci�n m�s completa. Un ejemplo es library(help="stats").
library(help = "stats")
library("stats")
?weighted.mean
#Algunos paquetes incluyen vi�etas. Una vi�eta es un documento corto que describe c�mo se usa un paquete. Puedes ver vi�etas usando la funci�n vignette(). Pru�balo: escribe vignette("tests") en la l�nea de comandos.
vignette("tests")
#Por �ltimo si deseas ver la lista de vi�etas disponibles puedes hacerlo usando el comando vignette() con los par�ntesis vac�os.
vignette()
vignette("manifesto")
vignette("timeSeriesPlot")
#Es MUY IMPORTANTE que sepas que durante todo el curso en swirl, puedes hacer uso de las funciones help() o ? cuando lo desees,