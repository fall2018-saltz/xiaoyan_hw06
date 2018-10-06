
censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

 barC1 <- ggplot(censusArrestsFinal2,aes(x=reorder(stateName, 
 murderNumByState), y=murderNumByState,fill=percentChange)) 
 barC2 <- barC1 + geom_col() 
 barC <- barC2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
 barC
 
