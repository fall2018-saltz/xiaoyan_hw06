
library("ggplot2")
library("maps")
library("ggmap")

us <- map_data("state")

# lowercase the state names in order to make the ggplot function works
DFhw7$stateName <- tolower(DFhw7$stateName)
 
 # a map named mapColor is created 
 mapColor <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) +  
                geom_map(map = us, fill=DFhw7$state.area) + 
                expand_limits(x = DFhw7$x, y = DFhw7$y) +
                coord_map() +  ggtitle("Map By Area in USA")
mapColor
  
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
  
