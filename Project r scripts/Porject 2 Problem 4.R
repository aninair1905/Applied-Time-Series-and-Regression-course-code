library(readxl)
library(ggplot2)

Manatee<-read_excel("C:/Users/naira/Documents/Project r scripts/Helicopter Plane.xls")

airplane<-lm(Manatee$Airplane ~ Manatee$Helicopter)

airplane_noint<-lm(Manatee$Airplane ~ Manatee$Helicopter - 1)

#summary(airplane)
#newdata<-data.frame(Manatee$Helicopter)
#predict(airplane, newdata, interval='confidence')
confint(airplane,Manatee$Helicopter,level=0.95)