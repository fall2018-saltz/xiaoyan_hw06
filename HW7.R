
library("ggplot2")
library("maps")
library("ggmap")

DF <- data.frame(state.area, state.center,state.name)
DF$stateName <- DF$state.name
num.col <- ncol(DF)
num.col
DF <- DF[,-(num.col-1)]
head(DF)
DFhw7 <-merge(censusArrestsFinal,DF,by= "stateName", all= TRUE)
head(DFhw7)
