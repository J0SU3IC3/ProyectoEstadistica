data_1=cbind((rnorm(cantData_1 <- 500,valorMed_1 <- 5,desvEs_1 <- 1)),
             (rnorm(cantData_1, valorMed_1, desvEs_1)),(clas_dat_1 <- rep("0",cantData_1)))

data_2=cbind((rnorm(cantData_2 <- 500,valorMed_2 <- 1,desvEs_2 <- 1)),
            (rnorm(cantData_2 ,valorMed_2 ,desvEs_2 )),(clas_dat_2 <- rep("1",cantData_2)))

Data <- rbind(data_1,data_2)
class_et <- (c(clas_dat_1,clas_dat_2))

plot(data_1,pch=20,xlim = c(-2,8), ylim = c(-3,8),col="black",xlab = "X",ylab = "Y")
points(data_2,pch=20, col = "brown")



