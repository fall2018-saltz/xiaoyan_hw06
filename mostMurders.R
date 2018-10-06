

censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

library("ggplot2")
 barC1 <- ggplot(censusArrestsFinal2,aes(x=reorder(stateName, 
 murderNumByState), y=murderNumByState,fill=percentChange)) 
 barC <- barC1 + geom_col() 
 barC
 
