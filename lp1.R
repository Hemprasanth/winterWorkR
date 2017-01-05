#includeslibrary
library(lpSolve)
#objective fn
obj.fun<-c(20,60)
#constraint matrix
constr<-matrix(c(30,20,5,10,1,1),ncol=2,byrow=TRUE)
#direction
constr.dir<-c("<=","<=",">=")
rhs<-c(2700,850,95)
#solving model
prod.sol<-lp("max",obj.fun,constr,constr.dir,rhs,compute.sens = TRUE)
#R output
prod.sol$objval
prod.sol$solution


