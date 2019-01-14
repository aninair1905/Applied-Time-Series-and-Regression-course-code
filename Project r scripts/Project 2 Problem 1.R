library(readxl)
library(ggplot2)

butterfly<-read_excel("C:/Users/naira/Documents/Project r scripts/butterfly.xls")


plot(log(butterfly$Area), butterfly$Species, xlab="log Area", ylab="Species", main="Log Area graph")

#plot(butterfly$Area, log(butterfly$Species), xlab="Area", ylab="Log Species", main="Log Species Graph")

#plot(butterfly$Area, butterfly$Species, xlab="Area", ylab="Species", main="No Log Graph")

#plot(log(butterfly$Area), log(butterfly$Species), xlab="Log Area", ylab="Log Species", main="Double Log Graph")

model_log_area<-lm(butterfly$Species~log(butterfly$Area))

#plot(model_log_area)
summary(model_log_area)

#abline(model_log_area, col="red")

data=data.frame(butterfly$Species=butterfly$Species,log(butterfly$Area)=factor(log(butterfly$Area)))
fit=aov(butterfly$Species~factor(log(butterfly$Area)))
summary(fit)


