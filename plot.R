
library("ggplot2")

head(censusArrestsFinal,10)

 
 hisPop1 <- ggplot(censusArrestsFinal, aes(x=population)) 
 hisPop2 <- hisPop1 + geom_histogram(binwidth=5000000, color="black", fill="white")
 hisPop <- hisPop2 + ggtitle("States Population Histogram")
 hisPop

 hisMur1 <- ggplot(censusArrestsFinal, aes(x=Murder)) 
 hisMur2 <- hisMur1 + geom_histogram(binwidth=2,color="black", fill="white")
 hisMur <- hisMur2 + ggtitle("Murder Rate Histogram")
 hisMur


hisAssa1 <- ggplot(censusArrestsFinal, aes(x=Murder)) 
 hisAssa2 <- hisAssa1 + geom_histogram(binwidth=2,color="black", fill="white")
 hisAssa <- hisAssa2 + ggtitle("Assault Rate Histogram")
 hisAssa
 
 hisUrbanPop1 <- ggplot(censusArrestsFinal, aes(x=Murder)) 
 hisUrbanPop2 <- hisUrbanPop1 + geom_histogram(binwidth=2,color="black", fill="white")
 hisUrbanPop <- hisUrbanPop2 + ggtitle("Urban Population Histogram")
 hisUrbanPop
 
 hisRape1 <- ggplot(censusArrestsFinal, aes(x=Murder)) 
 hisRape2 <- hisRape1 + geom_histogram(binwidth=2,color="black", fill="white")
 hisRape <- hisRape2 + ggtitle("Rape Rate Histogram")
 hisRape
