
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

summary(DFhw7$population)
DFhw7$population
DFhw7$popSizes <- factor(DFhw7$population, levels=c("1-579315","579316-1766400"
                    "1766401-4454189","4454190-72211006","72211007-39536653")


USAMap + 
   geom_point(aes(x=lon, y=lat), data=mv_num_collisions, 
   col="orange", alpha=0.4, 
   size=mv_num_collisions$collisions*circle_scale_amt) +  
   scale_size_continuous(range=range(mv_num_collisions$collisions))
 
