
censusArrestsFinal2 <-censusArrestsFinal

censusArrestsFinal2$murderNumByState <- censusArrestsFinal$Murder/100000*censusArrestsFinal$population

head(censusArrestsFinal2,11)
