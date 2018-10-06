
library("ggplot2")
scatterPlot <- ggplot(censusArrestsFinal, aes(x=population, y=popOver18,size=Murder, color=Murder)) +
    geom_point()
 
scatterPlot
