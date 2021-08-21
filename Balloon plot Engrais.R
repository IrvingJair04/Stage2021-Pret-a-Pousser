library(ggplot2)
library(ggpubr)

read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/engrais.txt", row.names = 1)

engrais <- read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/engrais.txt", row.names = 1)


ggballoonplot(engrais)
ggballoonplot(engrais, fill = "value", color = "grey40") + scale_fill_viridis_c(option = "plasma") + 
  scale_x_discrete(guide = guide_axis(angle = 0)) + 
  theme(panel.grid.major = element_line(colour = "grey75", size = 0.2),
        panel.grid.minor = element_line(colour = "grey75", size = 0.2))
              
              
              