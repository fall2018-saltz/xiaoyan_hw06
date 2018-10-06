
library("ggplot2")
ScatterPlot <- ggplot(censusArrestsFinal2, aes(x=population, y=popOver18)) +
    geom_point(aes(size=Murder, color=Murder))+
    theme(axis.text.x = element_text(angle = 90))

ScatterPlot
