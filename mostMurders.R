
murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population
colnames(censusArrestsFinal2) <- c(murderNumByState,colnames(censusArrestsFinal))

str(censusArrestsFinal2)
