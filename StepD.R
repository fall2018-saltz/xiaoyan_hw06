
mapCircleByPopNE <- mapColorByMurder + 
                geom_point(x = DFhw7$x, y = DFhw7$y, color="white",
                aes(size=DFhw7$population))
mapCircleByPopNE