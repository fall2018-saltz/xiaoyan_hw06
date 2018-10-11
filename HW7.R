
library("ggplot2")
library("maps")
library("ggmap")

DF <- data.frame(state.area, state.center,state.name)

DF$stateName <- DF$state.name
head(DF)
DF <- DF[]
DFhw7 <-merge(censusArrestsFinal,DF,by= "stateName", all= TRUE)
DFhw7 <- DFhw7[,-1]
