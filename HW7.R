
library("ggplot2")
library("maps")
library("ggmap")

DF <- data.frame(state.area, state.center,state.name)

DF$stateName <- DF$state.name
head(DF)
DFhw7 <-merge(censusArrestsFinal,DF,by= "stateName", all= TRUE)
head(DFhw7)
censusArrestsHW7 

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

