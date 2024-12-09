
#' This is package
#' @param dat The input dataframe
#' @title This to apply lm model to data
#' @return summary of lm model
#' @example regress(dat)
#' @author author Fadhaa Ali
#' @description
#' This is short description
#' @references Nagarajan R, Scutari M, Lebre S (2013). "Bayesian Networks in R with Applications in Systems Biology". Springer.
#' @concept Linear Regression.
#' @source The data comes from simulation.
#' @export
#' @examples n<-100
#' @examples x1<-rnorm(n,0,1);x2<-rnorm(n,0,1);Y<-2+3*x1+4*x2+rnorm(n,0,1)
#' @examples dat<-data.frame(cbind(Y,x1,x2))
#' @examples regress(dat)


regress<-function(dat){
  colname<-colnames(dat)
  ex<-paste(colname[3:length(colname)],collapse="+")
  term<-paste(c(colname[1],ex),collapse="~")
  model<-lm(term,data=data.frame(dat))
  return(model)}
