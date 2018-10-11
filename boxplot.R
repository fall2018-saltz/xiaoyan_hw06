
library("ggplot2")
boxplotPop <- ggplot(censusArrestsFinal, aes(x=factor(0),population))+geom_boxplot()
boxplotPop

boxplotMurder <- ggplot(censusArrestsFinal, aes(x=factor(0),Murder))+geom_boxplot()
boxplotMurder

#explaining which visualization (boxplot or histogram) you thought was more helpful 
# I think histogram is more helpful in terms of showing the distribution of one 
#variable. However, histogram might be misleading if the bin width was not appropriately
#dealt with. Boxplot might do a better job when comparing the distribution 
# between variables.
