
library("ggplot2")
library("maps")
library("ggmap")

DF <- data.frame(state.area, state.center,state.name)

DF$stateName <- DF$state.name
head(DF)
censusArrestsHW7 <-merge(censusArrestsFinal,subDF,by= "stateName", all= TRUE)

censusArrestsHW7 

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

