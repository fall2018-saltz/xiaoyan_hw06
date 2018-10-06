

censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

library("ggplot2")
 barCMostMurder <- ggplot(censusArrestsFinal2, title="Most Murders") +
    geom_col(aes(x=stateName, y=murderNumByState))+labs(x="Total Murders")+ 
 barC
 
 g <- ggplot(dfStates,aes(x=reorder(stateName, july11pop), y=july11pop,fill=percentChange)) 
 g <- g + geom_col() 
 g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
 g
 
