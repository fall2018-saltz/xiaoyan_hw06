
arrests <- USArrests
rownames(USArrests)
cleanCensus$stateName <- rownames(cleanCensus)

merge(cleanCensus,arrests,by= "rownames", all= TRUE)
