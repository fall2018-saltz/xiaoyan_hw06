
arrests <- USArrests
rownames(USArrests)
rownames(cleanCensus) <- cleanCensus$stateName
rownames(cleanCensus) 
str(cleanCensus)

merge(cleanCensus,arrests,by= "row.names", all= TRUE)
