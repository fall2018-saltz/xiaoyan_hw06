
us <- map_data("state")
 dummyDF <- data.frame(state.name, stringsAsFactors=FALSE)
 dummyDF$state <- tolower(dummyDF$state.name)
 
 map.simple <- ggplot(dummyDF, aes(map_id = state))  
 map.simple <- map.simple+  geom_map(map = us, fill="white", color="black") 
 map.simple <- map.simple + expand_limits(x = us$long, y = us$lat)
 map.simple <- map.simple + coord_map() +  ggtitle("basic map of continental USA")
 map.simple

 
  
 dfStates <- readCensus()
 # make sure everything is lowercase
 dfStates$state <- tolower(dfStates$stateName)
 
 map.popColor <- ggplot(dfStates, aes(map_id = state))  
 map.popColor <- map.popColor + geom_map(map = us, aes(fill=july11pop)) 
 map.popColor <- map.popColor + expand_limits(x = us$long, y = us$lat)
 map.popColor <- map.popColor+ coord_map() + ggtitle("state population")
 map.popColor
 
 map.simple + geom_point(aes(x = -100, y = 30))
 
 library(ggmap)
 latlon <- geocode("syracuse, ny")
 latlon
 map.popColor + geom_point(aes(x = latlon$lon, y = latlon$lat), color="darkred", size = 3)
 
  
 df.latlon <- data.frame(latlon)
 latlon <- geocode("colorado")
 df.latlon[2,] <- latlon
 df.latlon[3,] <- geocode("denver, colorado")
 map.simple + geom_point(data=df.latlon,aes(x = lon, y = lat))
  
 df.latlon$state <- "?"
 map.popColor + geom_point(data=df.latlon,aes(x = lon, y = lat),  alpha = .5, color="darkred", size = 3)
  
