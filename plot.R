
library("ggplot2")

head(censusArrestsFinal,10)

 
 g <- ggplot(censusArrestsFinal, aes(x=population)) 
 g <- g + geom_histogram(binwidth=5000000, color="black", fill="white")
 g <- g + ggtitle("states population histogram")
 g
