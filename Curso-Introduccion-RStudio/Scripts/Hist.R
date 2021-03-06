#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Graphs: Histograms, Boxplot, Scatterplot
#===============================================================================

if(!require("AER")){install.packages("AER")}
library(AER)
data(package = "AER")
data("CPS1985")
View(CPS1985)
str(CPS1985)
summary(CPS1985)
sapply(CPS1985, function(x) sum(is.na(x)))
sapply(CPS1985, function(x) sum(x == 0))
dim(CPS1985)
colnames(CPS1985)

# HISTOGRAM
hist(CPS1985$wage)
attach(CPS1985)
wage
p = hist(wage)
p
length(p$counts)
text(p$mids, p$counts, labels = p$counts, adj = c(0.5, -0.5), cex = 1)

?hist
# regla de Sturgues = 1 + log2(M) = 1 + log10(M) / log10(2)
p = hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     xlab = 'Salario',
     ylab = 'N�mero de personas')
p
text(p$mids, p$counts, labels = p$counts, c(0.5, -0.5), cex = 0.5)

palette()
?colors
hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     xlab = 'Salario',
     ylab = 'N�mero de personas',
     xlim = c(0, 50),
     col = 'blue',
     border = 'white')

#
max(p$density)
hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     freq = FALSE,
     xlab = 'Salario',
     ylab = 'Frecuencia relativa (tanto por uno)',
     xlim = c(0, 50),
     ylim = c(0, 0.12),
     col = 'blue',
     border = 'white',
     )

val = round(p$density, digits = 2)
text(p$mids, p$density, labels = val, adj = c(0.5, -0.5), cex = 0.75)

#
hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     freq = FALSE,
     xlab = 'Salario',
     ylab = 'Frecuencia relativa (tanto por uno)',
     xlim = c(0, 50),
     ylim = c(0, 0.12),
     col = 'blue',
     border = 'white',
)
lines(density(wage, adjust = 1), col = 'black', lwd = 3)
lines(density(wage, adjust = 2), col = 'red', lwd = 3, lty = 2)
lines(density(wage, adjust = 5), col = 'green', lwd = 3, lty = 2)

# 
hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     freq = FALSE,
     xlab = 'Salario',
     ylab = 'Frecuencia relativa (tanto por uno)',
     xlim = c(0, 50),
     ylim = c(0, 0.12),
     col = 'blue',
     border = 'white',
)
curve(dnorm(x, mean = mean(wage), sd = sd(wage)), add = TRUE, col = 'red', lwd = 3)

# Hex
hist(wage,
     breaks = 20,
     main = "Distribuci�n del Salario (dolares por a�o)",
     freq = FALSE,
     xlab = 'Salario',
     ylab = 'Frecuencia relativa (tanto por uno)',
     xlim = c(0, 50),
     ylim = c(0, 0.12),
     col = '#ff9900', # Anaranjado
     border = '#0040ff', # Azul
)
curve(dnorm(x, mean = mean(wage), sd = sd(wage)), add = TRUE, col = '#00ff00', lwd = 3) # verde
abline(v = mean(wage), lwd = 2, lty = 3, col = 'darkblue')
text(p$mids, p$density, labels = val, adj = c(0.5, -0.5), cex = 0.75)

# BOXPLOT
boxplot()
?boxplot # help("boxplot")
attach(CPS1985)
names(CPS1985)
boxplot(wage)
p <- boxplot(wage, 
main = "Salario (d�lares por hora)",
ylab = "Salario",
col = "pink",
border = "purple"
)
summary(wage)
p
p <- boxplot(wage ~ gender)
max(p$out[1:7])
length(p$out) == length(p$group)
max(p$out[8:length(p$out)])
289 + 245
str(CPS1985)
gender <- as.character(gender)
gender[2]
n = 1
dim(CPS1985)
dim(CPS1985)[1]
man = vector()
man[2] <- gender[3]
man
man[3] <- "male"
gender[3]
for (i in 1:dim(CPS1985)[1]){
    if (gender[i] == "male"){
       man[n] <- gender[i]
       n = n + 1
    }
}
ind <- is.na(man)
ind
length(man[!ind])
length(man[ind])
dim(CPS1985)[1] - length(man[!ind])
dim(CPS1985)[1] - length(man)
(dim(CPS1985)[1] - length(man)) + length(man)

boxplot(wage ~ gender,
        main = "Salario (dolares por hora) segun genero",
        ylab = "Salario",
        names = c("Hombres", "Mujeres"),
        xlab = "Genero")

datos_mujeres <- subset(CPS1985, gender == "female")
datos_hombres <- subset(CPS1985, gender == "male")
p <- boxplot(wage ~ gender,
        main = "Salario (dolares por hora) segun genero",
        ylab = "Genero",
        names = c("Hombres", "Mujeres"),
        horizontal = TRUE,
        xlab = "Salario",
        notch = FALSE)
p
points(mean(datos_mujeres$wage), 2, pch = 25, bg = "red", cex = 1.5)
points(mean(datos_hombres$wage), 1, pch = 19, bg = "blue", cex = 1.5)

# Con rainbow
p <- boxplot(wage ~ gender,
             main = "Salario (dolares por hora) segun genero",
             ylab = "Genero",
             names = c("Hombres", "Mujeres"),
             horizontal = TRUE,
             xlab = "Salario",
             notch = FALSE,
             col = rainbow(2, alpha = 1))

# Con heatcolors
p <- boxplot(wage ~ gender,
             main = "Salario (dolares por hora) segun genero",
             ylab = "Genero",
             names = c("Hombres", "Mujeres"),
             horizontal = TRUE,
             xlab = "Salario",
             notch = FALSE,
             col = heat.colors(2))

unique(occupation)
datos_worker <- subset(CPS1985, occupation == "worker")
datos_management <- subset(CPS1985, occupation == "management")
datos_sales <- subset(CPS1985, occupation == "sales")
datos_office <- subset(CPS1985, occupation == "office")
datos_services <- subset(CPS1985, occupation == "services")
datos_technical <- subset(CPS1985, occupation == "technical")
p <- boxplot(wage ~ occupation,
             main = "Salario (dolares por hora) segun genero",
             ylab = "Cargo",
             horizontal = TRUE,
             xlab = "Salario",
             notch = FALSE,
             col = rainbow(length(unique(occupation))), alpha = 0.6,
             border = rainbow(length(unique(occupation)), v = 0.7)
             )
length(unique(occupation))
p
points(mean(datos_worker$wage), 1, pch = 19, bg = "yellow", cex = 1.5)
points(mean(datos_technical$wage), 2, pch = 16, bg = "red", cex = 1.5)
points(mean(datos_services$wage), 3, pch = 22, bg = "darkblue", cex = 1.5)
points(mean(datos_office$wage), 4, pch = 25, bg = "red", cex = 1.5)
points(mean(datos_sales$wage), 5, pch = 20, bg = "red", cex = 1.5)
points(mean(datos_management$wage), 6, pch = 20, bg = "yellow", cex = 1.5)

boxplot(wage ~ gender*occupation)

# Next
a <- rainbow(6)
b <- rainbow(6, alpha = 0.2)
c <- rainbow(6, v = 0.5)

boxplot(wage ~ occupation,
        col = b,
        boxcol = c,
        medcol = c,
        whiskcol = a,
        staplecol = c,
        outcol = c,
        outbg = c,
        pch = 15,
        cex = 1,
        horizontal = T,
        main = "Salario (dolares por hora) segun ocupacion",
        ylab = "Ocupacion",
        xlab = "Salario",
        names = c("Empleado", "Tecnico", "Servicio", "Oficina", "Ventas", "Gerencia"))
?pch

# Modificacion de margenes
opar <- par()
par(mar=c(5, 6, 4, 2))
a <- rainbow(6)
b <- rainbow(6, alpha = 0.2)
c <- rainbow(6, v = 0.5)

boxplot(wage ~ occupation,
        col = b,
        boxcol = c,
        medcol = c,
        whiskcol = a,
        staplecol = c,
        outcol = c,
        outbg = c,
        pch = 15,
        cex = 1,
        horizontal = T,
        main = "Salario (dolares por hora) segun ocupacion",
        ylab = "Ocupation",
        xlab = NULL,
        ylim = c(0, 50),
        las = 1,
        frame = F)
par(opar)

# Leyenda anexa al grafico
a <- rainbow(6)
b <- rainbow(6, alpha = 0.2)
c <- rainbow(6, v = 0.5)

boxplot(wage ~ occupation,
        col = b,
        boxcol = c,
        medcol = c,
        whiskcol = a,
        staplecol = c,
        outcol = c,
        outbg = c,
        pch = 15,
        cex = 1,
        horizontal = T,
        main = "Salario (dolares por hora) segun ocupacion",
        ylab = NULL,
        xlab = "Salario",
        yaxt = "n")

legend("bottomright", title = "Salario", levels(occupation), fill = b)
str(CPS1985)

# Diagramas de dispersi�n
# Los diagramas de dispersi�n permiten efectuar un diagn�stico visual de la posible relaci�n (funcional)
# entre dos variables de naturaleza cuantitativa. La funci�n que permite realizar este tipo de gr�fico 
# es plot(). Si solicitamos la ayuda de R sobre esta funci�n (?plot), veremos que la funci�n plot tiene 
# un argumento llamado type que sirve para seleccionar el tipo de gr�fico a dibujar. Las opciones de 
# type son:
# "p" para hacer un gr�fico de puntos (es el tipo de gr�fico por defecto).
# "l" para hacer un gr�fico de l�neas.
# "b" para hacer un gr�fico de puntos y l�neas (pero las l�neas no entran en los puntos).
# "c" para hacer un gr�fico de l�neas (parten de los puntos, sin entrar, pero no se representan).
# "o" para hacer un gr�fico de puntos y l�neas (ahora las l�neas entran en los puntos).
# "h" para hacer un histograma o un diagrama de barras.
# "s" para hacer un diagrama de escalera.
# Por defecto la opci�n plot es type=p. Por tanto, si queremos hacer un diagrama de dispersi�n para 
# representar la nube de puntos no ser� necesario indicar el tipo de gr�fico.
# Como la variable Salario presenta una importante dispersi�n y asimetr�a (ver histograma), 
# vamos a representar el logaritmo del salario (log(wage)) en funci�n de la experiencia (experience).
?plot()
plot(experience, log(wage))
# Tambi�n lo pod�amos haber escrito as�:
plot(log(wage) ~ experience)
# Como siempre, lo primero para mejorar la presentaci�n de nuestro gr�fico de dispersi�n ser� incluir 
# el t�tulo del gr�fico y de los ejes (tambi�n podemos incluir esta informaci�n utilizando la funci�n 
# title() (echad un vistazo a esta funci�n, ?title).
plot (log(wage) ~ experience,  
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)"
)
# De forma similar
?title
plot(log(wage) ~ experience)
title(main = "Salario (en logaritmos) en funci�n de la experiencia")
# �Queremos ver el salario en funci�n de la experiencia y del g�nero?
plot (log(wage) ~ experience,
      col = rainbow(2)[c(gender)],     # asigna color a los puntos en funci�n del g�nero
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)",
      pch = 19
)
legend("topright", pch=16, col=rainbow(2), 
       legend=c("Hombres","Mujeres")) # a�adimos una leyenda al gr�fico

# Con la funci�n abline() podemos a�adir la recta de regresi�n en el diagrama de dispersi�n. Por ahora 
# �nicamente vamos a limitarnos a ver el efecto de la recta de regresi�n sobre el diagrama de dispersi�n.
# En otro curso estudiaremos, con cierta profundidad, los modelos de regresi�n con R.

# En primer lugar, obtenemos las regresiones
regresion_hombres <- lm(log(wage) ~ experience, data=CPS1985, subset=gender=="male")
regresion_mujeres <- lm(log(wage) ~ experience, data=CPS1985, subset=gender=="female")

plot (log(wage) ~ experience,
      col = rainbow(2)[c(gender)],     # asigna color a los puntos en funci�n del g�nero
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)"
)

legend("topright", pch=16, col=rainbow(2), legend=c("Hombres","Mujeres")) 

abline(regresion_hombres, col="red", lwd = 1.5)
abline(regresion_mujeres, col="blue", lwd = 1.5)

# Un diagrama de dispersi�n alternativo al anterior.
sexo <- as.numeric(gender)

plot (log(wage) ~ experience,
      pch = sexo,
      col = sexo,
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)"
)

with(CPS1985[gender=="male",], abline(lm(log(wage)~experience), col="red"))
with(CPS1985[gender=="female",], abline(lm(log(wage)~experience), col="black"))

legend("topright", legend=c("Hombres","Mujeres"), pch=1:2, col=1:2, bty="y")

# Para concluir, vamos a localizar el centro de gravedad 
# (coordenadas correspondientes a las medias de las variables) en el gr�fico de dispersi�n. Para ello 
# usaremos la funci�n points(). Como hay muchos puntos en el diagrama de dispersi�n, vamos a quitar los 
# colores para poder ver donde cae el centro de gravedad.

sexo <- as.numeric(gender)

plot (log(wage) ~ experience,
      pch = sexo,
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)"
)

with(CPS1985[gender=="male",], abline(lm(log(wage)~experience), col="black"))
with(CPS1985[gender=="female",], abline(lm(log(wage)~experience), col="black"))

legend("topright", legend=c("Hombres","Mujeres"), pch=1:2, bty="y")

points(mean(experience), mean(log(wage)), pch=16, col="red")

# y utilizando la funci�n abline() podemos dibujar las rectas que pasan representar las l�neas 
# (quitamos las rectas de regresi�n para poder ver con mayor claridad el efecto).
sexo <- as.numeric(gender)

plot (log(wage) ~ experience,
      pch = sexo,
      main = "Salario (en logaritmos) en funci�n de la experiencia",
      xlab = "Experiencia (en a�os)",
      ylab = "Salario (en logaritmos)"
)
legend("topright", legend=c("Hombres","Mujeres"), pch=1:2, bty="y")

points(mean(experience), mean(log(wage)), pch=16, col="red")
abline(v=mean(experience), h=mean(log(wage)))
# Tarea. Realizar un diagrama de dispersi�n para analizar la posible relaci�n entre el salario 
# (en logaritmos) y la edad (age) distinguiendo seg�n la raza (ethnicity).

