taxicab <- function(x,y){
  if ((length(x)-length(y))==0){
    absolutes <- rep(0,length(x))
    for (i in 1:length(x)) {
      absolutes[i] <- abs(x[i]-y[i])
    }
    return(sum(absolutes)) 
  }
  else{
    stop("La dimension de los vectores no es la misma")
  }
}


