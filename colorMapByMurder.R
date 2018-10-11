
library("ggplot2")
library("maps")
library("ggmap")

us <- map_data("state")

# lowercase the state names in order to make the ggplot function works
DFhw7$stateName <- tolower(DFhw7$stateName)
head(DFhw7)
 
 # a map named mapColorByMurder is created 
 mapColorByMurder <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) +  
                geom_map(map = us, fill=DFhw7$Murder) + 
                expand_limits(x = DFhw7$x, y = DFhw7$y) +
                coord_map() +  ggtitle("Map By Murder Rate in USA")
mapColorByMurder
  
library("RColorBrewer")

 mapCircleByPop <- ggplot(DFhw7, aes(map_id = DFhw7$stateName)) +  
                geom_map(map = us, fill="white", color="black") + 
                expand_limits(x = DFhw7$x, y = DFhw7$y) +
                coord_map() +  ggtitle("Map By Population in USA") +
                geom_point(aes(size=DFhw7$population)
mapCircleByPop
                


