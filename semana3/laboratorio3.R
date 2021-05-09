#Tipos de datos en R
#caracter, numerico, entero, logical y complejo
#Algunas funciones relevantes aprendidas en clase
seq(from = 1, to = 5, by = 1)
c(2,3,4,5)
rep("a", times=4)

#Indexando valores
datos <- 21:12
datos
datos[3]
datos[2:9]

carbon <- c(8, 54, 534, 1630, 6611)
carbon[5]
carbon[-2]
carbon[c(2,5)]
carbon[2:4]

#Operadores matematicos
## == 
## !=
## >
## <
## >=
## <=
## &
## |

carbon[carbon > 1000]
bool <- (carbon > 1000) & (carbon < 5000)
carbon[bool]

#PRACTICA SEMANA 3
vector(mode = "character", length = 9)
vector(mode = "numeric", length = 9)

seq(1:20)
c(5:10,-9:-1, seq(0,4,1))
c(seq(from = 10, to = 1, by = -1), seq(-3, 2, 1), rep(x = 3, times=3))

#función paste
paste("A", 1, sep="")
paste(LETTERS[3], 1:6, sep = "_")
paste(LETTERS, 1:26, sep ="")

cod <- paste(rep("cod", times = 26), "_", sep = "")
num <- paste(1:26, letters, sep="")
paste(cod, num, sep="")

vectorLog <- vector(mode = "logical", length = 20)
miVector <- c(seq(from = 10, to = 1, by = -1), seq(-3, 2, 1), rep(x = 3, times=3))
miVector == 0 | miVector > 0

#Funciones
mean()
sum()
length()
cumsum()

x <- sample(20)
y <- sample(20)
z <- sample(20)

sum(((x - z)^2)/length(x-1))
y + sum(((x - z)^2)/length(y))

#problema gauss
sum(1:100)
gauss <- seq(from = 1, to = 100, by = 1)
(gauss[1] + gauss[100]) * (length(gauss)/2)

##Subir la base de datos
worms <- read.table("worms.txt", header = T)
#a
head(worms)
worms$Soil.pH
c(2,11,16)
worms$Soil.pH[c(2,11,16)]

#b
worms$Area[worms$Area > 3]

#c
worms$Area[worms$Area < 2]

#d
worms$Area[worms$Area < 2 | worms$Area > 3]

#e
worms$Area[worms$Area == 1.9]

#Problema gauss
gauss <- seq(from = 1, to = 100, by = 1)
sum(gauss)
(gauss[1] + gauss[100]) * (length(gauss)/2)

gauss
mean(gauss)
summary(gauss)

miVector <- c(1,2,3,4, "a")
MIvECTOR1 <- c(1,2,3, TRUE)
class(miVector)
class(MIvECTOR1)

LETTERS[3:5]
LETTERS[c(3,4,5)]



#
rep(1:3, 3)
rep("a", 3)
c(1:4)
c("a","b","c")

miVector <- c(2,  3 , 5,  2,   6 , 7,  7,  8 , 9 )
miVector[c(1,3,5,7,9)]


paste(LETTERS[3],1:6,sep="_")

LETTERS[3]
1:6
paste(LETTERS[3],1:6, sep="_")
Letters
letters
LETTERS
seq(from=-4, to=4, by=1)
