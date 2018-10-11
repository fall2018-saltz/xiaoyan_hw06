
library("ggplot2")
library("maps")
library("ggmap")

censusArrestsHW7 <-censusArrestsFinal
colnames(cesnsusArrestsHW7) <-c(censusArrestsHW7,state.area,state.center,state.name) 

2)	Add the area of each state, and the center of each state, 
to the merged dataframe, 
using the ‘state.area’, ‘state.center’ and ‘state.name’ vectors
