#READ
#read data from csv file
data1<-read.csv(file.choose(),header = T)
data11<-read.table(file.choose(),header = T,sep=',')
#read data from txt file
data2<-read.delim(file.choose(),header = T)
data22<-read.table(file.choose(),header=T,sep='\t')


#WORK
#LungCapData<-read.table("directory",..,..)
LungCapData<-read.table(file.choose(),header = T,sep = '\t')
dim(LungCapData)

#attach the data
attach(LungCapData)
Age
mean(Age)
#details of variables in the data file
summary(LungCapData)
#type of variable
class(Gender)
#if factor...i.e..discrete..classification variable
levels(Gender)
length(Age)


#SUBSETTING
#Age from 10 to 20 observations
Age[10:20]
LungCapData[100:111,]
#mean age of females
mean(Age[Gender=='female'])
#males and females separate
femaleData<-LungCapData[Gender=='female',]
maleData<-LungCapData[Gender=='male',]
#males above 15
maleOver15<-LungCapData[Gender=='male'&Age>15,]

#1st 6 rows
head(LungCapData)
#last 6 rows
tail(LungCapData)