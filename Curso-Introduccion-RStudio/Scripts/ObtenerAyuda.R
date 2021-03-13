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

#En esta sesión conocerás las principales herramientas que R tiene 
#para obtener ayuda.
#La primera herramienta que puedes usar para obtener ayuda es help.start(). 
#En ella encontrarás un menú  de recursos, entre los cuales se encuentran 
#manuales, referencias y demás material para comenzar a aprender R.
help.start()
#Para usar help.start() escribe en la línea de comandos help.start(). 
#Pruébalo ahora:
#R incluye un sistema de ayuda que te facilita obtener información acerca 
#de las funciones de los paquetes instalados. Para obtener información 
#acerca de una función, por ejemplo de la función print(),debes escribir 
#?print en la línea de comandos.
?print
#Como puedes observar ? te muestra en la ventana Help una breve descripción 
#de la función, de cómo usarla, así como sus argumentos, etcétera.
#Asimismo, puedes usar la función help(), la cual es un equivalente de ?. 
#Al utilizar help(), usarás como argumento el nombre de la función entre 
#comillas, por ejemplo, help("print")
#Para buscar ayuda sobre un operador, éste tiene que encontrarse entre 
#comillas inversas. Por ejemplo, si buscas información del operador +, 
#deberás escribir help(`+`) o ?`+` en la línea de comandos.
#Otra herramienta disponible es la función apropos(), la cual recibe una 
#cadena entre comillas como argumento y te muestra una lista de todas las 
#funciones que contengan esa cadena. Inténtalo: escribe apropos("class") en 
#la línea de comandos.
?apropos
apropos('class')
?class
apropos('print')
#También puedes obtener ejemplos del uso de funciones con la función example().
#Por ejemplo, escribe example("read.table").
example('read.table')
#Con eso tendrás una idea de lo que puedes hacer con esta función.
#R te permite buscar información sobre un tema usando ??. Por ejemplo, podemos escribir ??regression en la línea de comandos.
??regression
??ggplot2
#Esta herramienta es muy útil si no recuerdas el nombre de una función, ya que R te mostrará una lista de temas relevantes en la venta Help. Análogamente, puedes usar la función help.search("regression").
help.search("regression")
#Otra manera de obtener información de ayuda sobre un paquete es usar la opción help para el comando library, con lo cual tendrás información más completa. Un ejemplo es library(help="stats").
library(help = "stats")
library("stats")
?weighted.mean
#Algunos paquetes incluyen viñetas. Una viñeta es un documento corto que describe cómo se usa un paquete. Puedes ver viñetas usando la función vignette(). Pruébalo: escribe vignette("tests") en la línea de comandos.
vignette("tests")
#Por último si deseas ver la lista de viñetas disponibles puedes hacerlo usando el comando vignette() con los paréntesis vacíos.
vignette()
vignette("manifesto")
vignette("timeSeriesPlot")
#Es MUY IMPORTANTE que sepas que durante todo el curso en swirl, puedes hacer uso de las funciones help() o ? cuando lo desees,