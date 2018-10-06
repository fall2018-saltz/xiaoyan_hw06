
arrests <- USArrests
rownames(USArrests)
cleanCensus$stateName <- rownames(cleanCensus)
str(cleanCensus)

merge(cleanCensus,arrests,by= "row.names", all= TRUE)
