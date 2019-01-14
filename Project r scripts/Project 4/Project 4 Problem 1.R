library(ggplot2)
library(readxl)

Height<-read_excel("C:/Users/naira/Documents/Project r scripts/data Height.xls")

#plot(Height$`length at birth`,Height$`height at 18`)

HeightModel<-lm(Height$`height at 18`~Height$`length at birth`+Height$`mother ht at 18`+Height$`father ht at 18`+Height$`mater grandma ht at 18`+Height$`mater grandpa ht at 18`+Height$`pater grandma ht at 18`+Height$`pater grandpa ht at 18`)

#influence.measures(HeightModel)
plot(HeightModel,cex=10*sqrt(cooks.distance(HeightModel)))

#plot(fitted(HeightModel),resid(HeightModel))