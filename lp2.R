library(lpSolve)
#define parameters
#origins run i in 1:m
#destinations run j in 1:n
f.obj<-c(8,6,3,2,4,9)
#1 row per constraint
#1 column per variable
m<-2
n<-3
#columns=#variables=m*n
#rows=#constraints=m+n
f.con<-matrix(0,n+m,n*m)
for(i in 1:m)
{
  for(j in 1:n)
  {
    f.con[i,n*(i-1)+j]<-1 #constraint for origin
    f.con[m+j,n*(i-1)+j]<-1 #constraint for destination
  }
}
f.dir<-c(rep("<=",m),rep(">=",n))
f.rhs<-c(70,40,40,35,25)
prod.trans<-lp("max",f.obj,f.con,f.dir,f.rhs)
solution<-matrix(prod.trans$solution,m,n,byrow=TRUE)
obj.val<-prod.trans$objval