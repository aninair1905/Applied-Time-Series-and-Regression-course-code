library(ggplot2)
library(readxl)

HeartData<-read_excel("C:/Users/naira/Documents/Project r scripts/HeartProblem4Project4.xlsx")




mod.fit=glm(formula=HeartData$Heart~HeartData$CK ,family=binomial(link='logit'),data=HeartData)
mod.fit
summary(mod.fit)
names(mod.fit)
mod.fit$coefficients

