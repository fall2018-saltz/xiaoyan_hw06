
library("ggplot2")

head(censusArrestsFinal,10)

 
 g1.1 <- ggplot(censusArrestsFinal, aes(x=population)) 
 g1.2 <- g1.1 + geom_histogram(binwidth=5000000, color="black", fill="white")
 g1 <- g1.2 + ggtitle("States Population Histogram")
 g1

 g2.1 <- ggplot(censusArrestsFinal, aes(x=Murder)) 
 g2.2 <- g2.1 + geom_histogram(color="black", fill="white")
 g2 <- g2.2 + ggtitle("Murder Rate Histogram")
 g2
