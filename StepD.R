
library("ggplot2")
library("maps")
library("ggmap")

us <- map_data("state")

mapCircleByPopNE <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) +  
                geom_map(map = us, aes(color=DFhw7$Murder,
                fill=DFhw7$Murder) + 
                expand_limits(x =us$long, y = us$lat) +
                coord_map(xlim=c(-64,-84), ylim=c(30.71,50.71) +
                ggtitle("Map for North East in the USA") +
                geom_point(x=DFhw7$x,y=DFhw7$y, color="white", 
                aes(size=DFhw7$population))
                
mapCircleByPopNE
