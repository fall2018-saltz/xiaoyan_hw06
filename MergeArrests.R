
arrests <- USArrests
rownames(USArrests)
rownames(cleanCensus) <- cleanCensus$stateName
rownames(cleanCensus) 
str(cleanCensus)

mergedData <- merge(cleanCensus,arrests,by= "row.names", all= TRUE)

