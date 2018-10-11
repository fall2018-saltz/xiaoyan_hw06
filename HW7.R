
library("ggplot2")
library("maps")
library("ggmap")

subDF <- data.frame(state.area, state.center,state.name)
subDF$stateName <- subDF$state.name
head(subDF)
censusArrestsHW7 <-merge(censusArrestsFinal,subDF,by= "stateName", all= TRUE)

censusArrestsHW7 

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

