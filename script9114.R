
library("ggplot2")
scatterPlot2 <- ggplot(censusArrestsFinal, aes(x=population, y=popOver18,size=Murder, color=Murder)) +
    geom_point()
 
scatterPlot2
