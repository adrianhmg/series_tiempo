#Instalar paquetes
install.packages("sandwich")
library(sandwich) #Usar libreria que acabo de instalar

#Cualquiera de las 2 formas para asignar es correcto
programas = c("sandwich","readxl")
programas <- c("sandwich","readxl")

#Para instalar vector de diferentes paquetes
#install.packages(c)

#character(0) no hay archivos, ruta temporal donde tendremos librerías
# ~ Simbolo de carpeta madre 
list.files("~")
list.files("~/Documents/R_coding/lib")

#descargar en caso de estar offline y tenerlo que pasar a una USB
info <- download.packages(("sandwich"), destdir="/home/pi/Documents/R_coding/lib")
#asi se instalan
install.packages(info[1,2], repos=NULL, lib="~/Documents/R_coding/lib")
#asi se leen
library(sandwich,lib.loc="~/Documents/R_coding/lib")

# .libPaths()

install.packages("writexl")
install.packages("readxl")
#la mejor libreria para escribir datos y leer

seq(from=1,to=9)
seq(1,9)
seq(1,9,2)

#  para R las variables son vectores de tamaño uno
x <- seq(1,20, by=2) # secuencia, un vector de tama~no 10
y <- rep(3,4) # repetici´on, repetir cuatro veces el n´umero 3
z <- c(x,y) # concatenaci´on, unir x y y en el vector z
x1 <- 100:110 #secuencia, de 100 a 110
i <- c(1,2,3)
x1[i] # extracci´on de valores espec´ificos del vector x1
j <- c(-1, -2, -3)
x1[j] # mostrar x1 excepto los valores indexados en j

x <- c(1,2,3)
y <- c(4,5,6)

x%*%y

#datos omitidos son conocidos como NA

a <- NA
is.na(a)

a <- c(11,NA,13)
is.na(a)
#Omitir na del vector
a[!is.na(a)]

# Expresiones Logicas
x <- 1:20
# vamos a obtener los enteros divisibles entre 4
x%%4 == 0 # expresi´on l´ogica, el operador %% es el modular

x[2]<- NA
x[4]<- NA

#lineas iguales dan los mismos resultados,
y <- x[x%%4 == 0]  #subvectores
subset(x,subset=x%%4==0) #Ignora los datos omitidos
which(x%%4 == 0)

# Matrices, byrow true el ordenamiento es diferente, lo ordena por filas no por columnas
X <- matrix(1:4, nrow = 3, ncol =3, byrow=T)
Y <- diag(5,3,3)
#Concatenar rbind, es como append, pega por filas (aumenta filas)
Z <- rbind(X,Y)
#Concatenar cbind, es como append, pega por columnas (aumenta columnas)
Z <- cbind(X,Y)

#Transpuesta de una matriz
t(X)

x <- 1:3
y <- 12:14
z <- cbind(x,y)
z

solve(X)

rm(z)
rm(list=ls())

# Condicionales
#Encontrar las raices de un polinomio cuadrático
# coeficientes
a <- 1
b <- 4
c <- 2
# calculo
root1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
root2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)
# resultado
print(c(root1, root2))

# calcular el discriminante de una cuadr´atica
discrim <- b^2 - 4*a*c
# Calcula las ra´ices dependiendo del valor del discriminante
if (discrim > 0) {
        roots <- c( (-b + sqrt(b^2 - 4*a*c))/(2*a),
                            (-b - sqrt(b^2 - 4*a*c))/(2*a) )
} else {
        if (discrim == 0) {
                roots <- -b/(2*a)
        } else {
                roots <- c()
        }
}


##Fors and loops
x <- c("uno","dos","tres")

y <- c(1,3)
for (i in y){
    cat(x[-i],"\n")
}

n<-10000
x<-1
for(i in 1:n){
    x[i] <- i
}

x <- 10
while (x <= 1000){
    cat(x,"\n")
    x<- x+5
}

n <- 100
S <- 0
for(i in 1:n){
    S <- S+ i^2
}

tiempo1 <- proc.time()
S<-0
for(i in 1:(10^4)){
    S<-S+1
}
tiempoFinal <- proc.time() -tiempo1
cat(tiempoFinal,"\n")


n_factorial <- function(n=3){
    n_fact<-prod(1:n)
    return(n_fact)
}

n_choose_r <- function(n,r){
    n_ch_r <- fa
}

# calcula el factorial de n
nfact2 <- function(n) {
    if (n == 1) {
        cat("se llam´o a nfact2(1)\n")
        return(1)
    } else {
        cat("se llam´o a nfact2(", n, ")\n", sep = "")
        return(n*nfact2(n-1))
    }
}

# ordenamiento alfabetico, por default
cabello <- c("rubio", "negro", "cafe", "negro","rubio","calvo","gris")
cabello2 <- factor(cabello)
niveles <- levesl(cabello2)
table(cabello2)

#Ordenamiento como yo lo quiero
uno <- c("L","H","H","L","M","M","L")
dos <- factor(uno, levels=c("L","H","M"), ordered =TRUE)
datostable(dos)

as.vector(dos)
as.numeric(dos )

a <- c("alto", "bajo", "gordo", "flaco")
b <- c(23,45,12,2)
c <- c("A","B","A","C")
c <- factor(c)
datos <- data.frame(a,b,c, row.names=a)

#Grupo indexado de elementos, que no tienen que ser forzosamente del mismo tipo


lista1 <- list("uno", TRUE, 3, c("c","u","a","t","r","o"))
lista1
lista1[[2]]
mode(lista1[[2]])
mode(lista1[2])
lista1[[4]][1]
lista1[4][1]

# Leer sobre el uso y abuso de P-Value como sinonimo de significancia en las pruebas caracteristicas
lm.mtcars <- lm(mpg ~ hp + disp, data=mtcars)
names(lm.mtcars)
summary(lm.mtcars)
