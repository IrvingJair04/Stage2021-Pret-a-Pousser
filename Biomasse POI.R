read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/Biomasse POI.txt", 
           header = TRUE)

dta <- read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/Biomasse POI.txt", 
                  header = TRUE)

library(ggplot2)
library(ggpubr)
library(ggthemes)

my_comparisons = list(c("Sachets", "Plagron hydro"), 
                      c("Plagron hydro", "Plagron terra"), 
                      c("Sachets", "Plagron terra") )

ggboxplot(dta, x = "Engrais", y = "Masse",
          ylab = "Masse (g)", xlab = "Engrais",
          color = "grey25",
          fill = "Engrais",
          palette = c("#808080", "#26B4B8", "#6775B1"),
          short.panel.labs = FALSE,
          bxp.errorbar = TRUE,
          bxp.errorbar.width = 0.1,
          size = 0.1,
          width = 0.3,
          outlier.shape = 21) + 
  stat_compare_means(comparisons = my_comparisons, label.y = c(6.5, 7.5, 8.5),
                     symnum.args = list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("****", "***", "**", "*", "ns"))) +
  stat_compare_means(label.y = 10.5) + 
  theme(panel.grid.major = element_line(colour = "grey75", size = 0.2),
        panel.grid.minor = element_line(colour = "grey75", size = 0.2))
  
