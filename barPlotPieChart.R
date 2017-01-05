#barplot
barplot(count)
#title
barplot(count,main="my1stPlot")
#x n y label
barplot(count,main="my1stPlot",xlab = "Gender",ylab = "Frequency")
#rotate 
barplot(count,main="my1stPlot",xlab = "Gender",ylab = "Frequency",las=1)
#renaming arguments
barplot(count,main="my1stPlot",xlab = "Gender",ylab = "Frequency",las=1,names.arg = c("Female","Male"))
#horizontal bar
barplot(count,main="my1stPlot",xlab = "Gender",ylab = "Frequency",las=1,names.arg = c("Female","Male"),horiz=T)

#pie
pie(count)
pie(count,main="1stPie",labels = c("Female","Male"),col = c("purple", "violetred1"))
