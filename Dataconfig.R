source("metricas.R")
library(MASS)
FI

##Primera configuración de datos

data_1=cbind((rnorm(cantData_1 <- 500,valorMed_1 <- 5,desvEs_1 <- 1)),
             (rnorm(cantData_1, valorMed_1, desvEs_1)),(clas_dat_1 <- rep("0",cantData_1)))

data_2=cbind((rnorm(cantData_2 <- 500,valorMed_2 <- 1,desvEs_2 <- 1)),
            (rnorm(cantData_2 ,valorMed_2 ,desvEs_2 )),(clas_dat_2 <- rep("1",cantData_2)))

Data <- rbind(data_1,data_2)
class_et <- (c(clas_dat_1,clas_dat_2))

plot(data_1,pch=20,xlim = c(-2,8), ylim = c(-3,8),col="blue",xlab = "X",ylab = "Y")
points(data_2,pch=20, col = "green")


##Segunda configuración de datos
data_3=cbind((rnorm(cantData_3 <- 1000,valorMed_3 <- 2,desvEs_3 <- 1)),
              (rnorm(cantData_3 ,valorMed_3,desvEs_3)))
clas_dat_3 <- rep("0",cantData_3)
for (i in 1:cantData_3) {
  test[i] <- taxicab(c(2,2),c(data_3[i,1],data_3[i,2]))
  if (taxicab(c(2,2),c(data_3[i,1],data_3[i,2]))<1.5) {
    clas_dat_3[i] <- 1
    
  }
}
Data2 <- cbind(data_3,clas_dat_3)

plot(Data2[,1:2],pch=20,col="white",xlab = "X", ylab = "Y")
points(Data2[Data2[,3]==0,],pch="-", col="blue")
points(Data2[Data2[,3]==1,],pch="+", col="red")

#Tercera configuración de datos
circ_int <- 500
circ_ext <- 500

data_4 <- matrix( c(
  cos(seq(from=0, to=pi, length.out=circ_ext)),  # Outer circle x
  1 - cos(seq(from=0, to=pi, length.out=circ_int)), # Inner circle x
  sin(seq(from=0, to=pi, length.out=circ_ext)), # Outer circle y
  1 - sin(seq(from=0, to=pi, length.out=circ_int)) - 0.5 # Inner circle y 
), ncol=2) 

data_4 <- data_4 + cbind(rnorm(1000, mean = 1, sd=0.1),rnorm(1000, mean = 0, sd=0.1))
clas_dat_4 <- c(rep(0, circ_ext), rep(1, circ_int))
Data3 <- cbind(data_4,clas_dat_4)

plot(data_4)
plot(Data3[,1:2],pch=20,col="white",xlab = "X", ylab = "Y")
points(Data3[Data3[,3]==0,],pch=0, col="blue")
points(Data3[Data3[,3]==1,],pch=1, col="red")


