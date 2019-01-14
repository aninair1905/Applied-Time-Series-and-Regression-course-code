library(ggplot2)
library(readxl)

cocaine<-read_excel("C:/Users/naira/Documents/Project r scripts/Cocaine.xls")

cocaineModel<-lm(cocaine$price~cocaine$quant+cocaine$qual+cocaine$trend)

plot(cocaine$price~cocaine$quant)

summary(cocaineModel)