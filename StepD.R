
library("ggplot2")
library("maps")
library("ggmap")

us <- map_data("state")

mapCircleByPopNE <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) 
mapCircleByPopNE <- mapCircleByPopNE +  
                geom_map(map = us, aes(color=DFhw7$Murder,
                fill=DFhw7$Murder)) 
mapCircleByPopNE <- mapCircleByPopNE + 
                    expand_limits(x =us$long, y = us$lat)
mapCircleByPopNE <- mapCircleByPopNE + 
            coord_map(xlim=c(-64,-84), ylim=c(30.71,50.71)) 
mapCircleByPopNE <-mapCircleByPopNE + 
            ggtitle("Map for North East in the USA") 
mapCircleByPopNE <- mapCircleByPopNE + 
                geom_point(x=DFhw7$x,y=DFhw7$y, color="white", 
                aes(size=DFhw7$population))
                
mapCircleByPopNE

