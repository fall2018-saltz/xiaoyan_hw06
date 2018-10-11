
library("ggplot2")
library("maps")
library("ggmap")

newDF <- data.frame(state.area, state.center,state.name)
newDF$stateName <- newDF$state.name
head(newDF)
censusArrestsHW7 <-merge(censusArrestsFinal,subDF,by= "stateName", all= TRUE)

censusArrestsHW7 

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

