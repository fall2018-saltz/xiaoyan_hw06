
censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

 barC <- ggplot(censusArrestsFinal2,aes(x=reorder(stateName, censusArrestsFinal$Murder), y=july11pop,fill=percentChange)) 
 g <- g + geom_col() 
 g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
 g
 
