
 g <- ggplot(dfStates, aes(x=july11pop)) 
 g <- g + geom_histogram(binwidth=5000000, color="black", fill="white")
 g <- g + ggtitle("states population histogram")
 g
