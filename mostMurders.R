

censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

library("ggplot2")
 barCMostMurder <- ggplot(censusArrestsFinal2, title="Most Murders") +
 barC <- barC1 + geom_col() 
 barC
 
