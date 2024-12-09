#' Title genr
#'
#' @param data
#' @return
#' @export
#' @examples generate<-genr()
#' @author Fadhaa Ali



genr<-function(){
  n<-100
  x1<-rnorm(n,0,1);x2<-rnorm(n,0,1);Y<-2+3*x1+4*x2+rnorm(n,0,1)
  data_sim<-data.frame(cbind(Y,x1,x2))
  return(data_sim)}
