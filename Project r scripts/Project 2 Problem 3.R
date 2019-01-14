library(readxl)
library(ggplot2)

carSold<-c(20,18,10,6,11)
aveSales<-c(6,6,4,2,3)
#plot(carSold~aveSales)
model<-lm(carSold~aveSales)

#new<-data.frame(aveSales=5)
#predict(model, new, se.fit=T, interval='prediction')
#summary(model)

#newdata<-data.frame(aveSales=5 )
#predict(model, newdata, interval="confidence")

#confint(model,aveSales,fit = T,level=0.95)

