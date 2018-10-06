

censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

library("ggplot2")
 barCMostMurder <- ggplot(censusArrestsFinal2, title="Most Murders") +
    geom_col(aes(x=stateName, y=murderNumByState))+labs(x="Total Murders")+
    theme(axis.text.x = element_text(angle = 45))
 barCMostMurder
 
 barCSortedMostMurder <- ggplot(censusArrestsFinal2, title="Most Murders") +
    geom_col(aes(x=reorder(stateName,murderNumByState), y=murderNumByState))+labs(x="Total Murders")+
    theme(axis.text.x = element_text(angle = 45))
 barCSortedMostMurder
 
