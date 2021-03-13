#===============================================================================
# Name   : Curso Master en R: desde principiante a experto 
# Author : Jonathan Medina
# Version: v3
# Aim    : Write code
#===============================================================================

# Read the data
setwd("C:\\Users\\USUARIO\\OneDrive - Escuela Superior Politécnica del Litoral\\Archivos adjuntos\\R\\Libros\\1er libro leido\\RBook\\")
Squid <- read.table(file = "squidGSI.txt", header = TRUE) # header = T
View(Squid)
str(Squid)
Squid$Sample <- NULL
# What are the variable names?
names(Squid)

# Wrong way
Squid2 <- read.table(file = "squidGSI.txt", dec = ",", header = T)
View(Squid2)
str(Squid2)
boxplot(Squid$GSI)
sapply(Squid, function(x) sum(is.na(x)))
sapply(Squid, function(x) sum(x==0))
mean(Squid$GSI, na.rm = F)
boxplot(Squid$GSI ~ factor(Squid$Location))

##
Squid$Sex # De forma vectorial
Squid["Sex"] # De forma de un data frame
names(Squid)
View(Squid["Sex"])
Sel <- Squid$Sex == 1
unique(Squid$Sex)
Sel
SquidF <- Squid[Sel,]
View(SquidF)
SquidM <- Squid[Squid$Sex == 2, ] # & 
View(SquidM)
SquidFL <- Squid[Squid$Sex == 1 & Squid$Location == 1, ]
View(SquidFL)
SquidF <- Squid[Squid$Sex == 1,]
SquidF1 <- SquidF[Squid$Location == 1, ]
View(SquidF1)

Ord1 <- order(Squid$Month)
unique(Squid$Month)
unique(Ord1)
SquidO <- Squid[Ord1, ]
View(SquidO)

str(Squid)
unique(Squid$Location)
Squid$fLocation <- factor(Squid$Location)
Squid$fSex <- factor(Squid$Sex, labels = c("H", "M"))
unique(Squid$Sex)
View(Squid['fSex'])

names(Squid)

Squid$fLocation <- factor(Squid$Location, levels = c(2, 3, 1, 4))
View(Squid['fLocation'])
View(Squid)
Squid$fLocation <- factor(Squid$Location, labels = c("N", "S", "E", "O"))

# Fusion
Sq1 <- read.table(file = "squid1.txt", header = TRUE)
View(Sq1)
Sq2 <- read.table(file = "squid2.txt", header = TRUE)
View(Sq2)
# merge
SquidMerged <- merge(Sq1, Sq2, by = "Sample", all = TRUE)
SquidMerged[1:14, ]

Squid$fLocation <- factor(Squid$Location)
str(Squid)

SquidM <- Squid[Squid$Sex == 1, ]
write.table(SquidM,
file = "MaleSquid.txt",
sep = " ", quote = FALSE, append = FALSE, na = "NA")
?write.table
write.table(SquidM,
file = "MaleSquid.txt",
sep = ",", quote = TRUE, append = FALSE, na = "NA")

write.table(SquidM,
file = "MaleSquid.txt",
sep = " ", quote = TRUE, append = TRUE, na = "NA")

write.table(SquidMerged,
file = "SquidMerged.txt",
sep = " ", quote = F, append = FALSE, na = "NA")
