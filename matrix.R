#enter elements row wise
matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,byrow=TRUE)
#column wise...enter TRUE or FALSE in capital
matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,byrow=FALSE)
matrix(c(1,2,3,4,5,6,7,8,9,10),ncol = 2,byrow=FALSE)
#assign elements to a variable mat
mat<-matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,byrow=TRUE)
mat
#extract
mat[1,3]
#1st n 2nd row ...3rd column
mat[c(1,2),3]
#3rd row
mat[3,]
#1st column
mat[,1]
#1st to 2nd row
mat[1:2,]
#1st n 3rd row
mat[c(1,3),]
mat*10
