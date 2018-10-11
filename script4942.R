
library("ggplot2")
scatterPlot <- ggplot(censusArrestsFinal, aes(x=population, y=percentOver18)) +
    geom_point(aes(size=Murder, color=Murder))+
    theme(axis.text.x = element_text(angle = 90))

scatterPlot
