
arrests <- USArrests
rownames(USArrests)
rownames(cleanCensus) <- cleanCensus$stateName
str(cleanCensus)

merge(cleanCensus,arrests,by= "row.names", all= TRUE)
