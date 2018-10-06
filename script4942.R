
  barCColor <- ggplot(censusArrestsFinal2, aes(x=population, y=popOver18)) +
    geom_point(aes(size=Murder, color=Murder,fill=percentOver18))+labs(x="Total Murders")+
    theme(axis.text.x = element_text(angle = 90))
 barCColor
 
 head(censusArrestsFinal2)
  g <- ggplot(dfStates, aes(x=popChange, y=percentChange))  
 g <- g + geom_point(aes(size=july11pop, color=july11pop))
 g
 
