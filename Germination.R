read.delim("/Users/pap/Desktop/Graphiques/txt/Taux de germination.txt", header = TRUE)

dta <- read.delim("/Users/pap/Desktop/Graphiques/txt/Taux de germination.txt", header = TRUE)

dta$Espece = as.factor(dta$Espece)
dta$Engrais = as.factor(dta$Engrais)
str(dta)

library("agricolae")
library("stats")

attach(dta)
aov.res = aov(Germination ~ Engrais)
aov.res

