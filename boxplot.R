
library("ggplot2")
boxplotPop <- ggplot(censusArrestsFinal, aes(x=factor(0),population))+geom_boxplot()
boxplotPop

#explaining which visualization (boxplot or histogram) you thought was more helpful 
# 
