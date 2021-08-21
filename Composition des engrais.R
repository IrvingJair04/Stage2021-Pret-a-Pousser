library(ggplot2)
library(ggpubr)

read.delim("/Users/pap/Desktop/Engrais.txt", row.names = 1)

engrais <- read.delim("/Users/pap/Desktop/Engrais.txt", row.names = 1)


ggballoonplot(engrais)
ggballoonplot(engrais, fill = "value", color = "grey40") + 
  scale_fill_viridis_c(option = "C") + 
  scale_x_discrete(guide = guide_axis(angle = 0))
