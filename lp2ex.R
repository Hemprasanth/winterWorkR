library(lpSolve)
obj.fun<-c(8,6,3,2,4,9)
constr<-matrix(c(1,1,1,0,0,0,0,0,0,1,1,1,1,0,0,1,0,0,0,1,0,0,1,0,0,0,1,0,0,1),ncol = 6,byrow=TRUE)
constr.dir<-c("<=","<=",">=",">=",">=")
rhs<-c(70,40,40,35,25)
prod.sol<-lp("max",obj.fun,constr,constr.dir,rhs,compute.sens = T)
sol<-c(prod.sol$solution)
objval<-prod.sol$objval