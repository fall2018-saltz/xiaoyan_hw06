
arrests <- USArrests
cleanCensus$stateName <- rownames(cleanCesnus)

merge(cleanCesnus,arrests,by= "rownames", all= TRUE)
