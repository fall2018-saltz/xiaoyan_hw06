
library("ggplot2")
library("maps")
library("ggmap")

subDF <- data.frame(state.area, state.center,state.name)
head(subDF)
subDF$statename <- subDF$state.name
censusArrestsHW7 <-merge(censusArrestsFinal,subDF,by= "stateName", all= TRUE)

censusArrestsHW7 

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)


2)	Add the area of each state, and the center of each state, 
to the merged dataframe, 
using the ‘state.area’, ‘state.center’ and ‘state.name’ vectors
