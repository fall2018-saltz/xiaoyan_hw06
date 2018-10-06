
murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population
cNames<-c(murderNumByState,colnames(censusArrestsFinal))
censusArrestsFinal2 <- data.frame(cNames)
str(censusArrestsFinal2)
