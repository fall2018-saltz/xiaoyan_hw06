
library("ggplot2")
boxplotPop <- ggplot(censusArrestsFinal, aes(x=factor(0),population))+geom_boxplot()
boxplotPop

boxplotMurder <- ggplot(censusArrestsFinal, aes(x=factor(0),murder))+geom_boxplot()
boxplotMurder

head(censusArrestsFinal)

#explaining which visualization (boxplot or histogram) you thought was more helpful 
# 
