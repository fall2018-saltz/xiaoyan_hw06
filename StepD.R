
library("ggmap")

latlon <- geocode("newyork,ny")
mapCircleByPopNE <- mapColorByMurder + 
                geom_point(x = latlon$lon, y = latlon$lat, color="white",
                aes(size=DFhw7$population))
mapCircleByPopNE
