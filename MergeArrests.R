
arrests <- USArrests
rownames(USArrests)
rownames(cleanCensus) <- cleanCensus$stateName
rownames(cleanCensus) 
str(cleanCensus)

censusArrests <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

head(censusArrests)
censusArrestsFinal <-censusArrests[,-1]
head(censusArrestsFinal)
