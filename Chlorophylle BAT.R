read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/Chlorophylle BAT.txt", header = TRUE)

dta <- read.delim("C:/Users/Irving Arcia/Desktop/Rapport de stage/txt/Chlorophylle BAT.txt", header = TRUE)

library(ggplot2)
library(ggpubr)

my_comparisons = list( c("Sachets", "Plagron hydro"), c("Plagron hydro", "Plagron terra"), c("Sachets", "Plagron terra") )

ggboxplot(dta, x = "Engrais", y = "Chlorophylle",
          ylab = "Chlorophylle (mg cm-2)", xlab = "Engrais",
          color = "grey30",
          fill = "Engrais",
          palette = c("#808080", "#26B4B8", "#6775B1"),
          short.panel.labs = FALSE,
          bxp.errorbar = TRUE,
          bxp.errorbar.width = 0.1,
          size = 0.1,
          width = 0.3,
          outlier.shape = 21) + 
  stat_compare_means(comparisons = my_comparisons, label.y = c(0.6, 0.7, 0.8),
                     symnum.args = list(cutpoints = c(0, 0.0001, 0.001, 0.01, 0.05, 1), symbols = c("****", "***", "**", "*", "ns"))) +
  stat_compare_means(label.y = 1.05) + 
  theme(panel.grid.major = element_line(colour = "grey75", size = 0.2),
        panel.grid.minor = element_line(colour = "grey75", size = 0.2))

