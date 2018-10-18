
library("ggmap")
library("ggplot2")

us <- map_data("state")

mapColorByMurder <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) +  
                geom_map(map = us, fill=DFhw7$Murder) + 
                expand_limits(x = DFhw7$x, y = DFhw7$y) +
                coord_map() +  ggtitle("Map By Murder Rate in USA")
mapColorByMurder

latlon <- geocode("newyork,ny")
mapCircleByPopNE <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) + 
                geom_point(x = latlon$lon, y = latlon$lat, color="white",
                aes(size=DFhw7$population))
mapCircleByPopNE
