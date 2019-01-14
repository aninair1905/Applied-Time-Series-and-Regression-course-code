library(readxl)
library(ggplot2)


gpaFile<- read_excel("C:/Users/naira/Documents/Project r scripts/gpa Problem 5.xls")
attach(gpaFile)
model_GPA<-lm(gpaFile$colGPA~gpaFile$ACT, data = gpaFile)
model2<-lm(gpaFile$colGPA~gpaFile$hsGPA, data = gpaFile)


#with(gpaFile,plot(gpaFile$ACT, gpaFile$colGPA))
#abline(model)
#newdata<-data.frame(gpaFile$ACT)
#predict(model, newdata, interval="confidence")

#plot(resid(model_GPA))
#summary(model2)
#summary(model_GPA)
#plot(model2)
#hist(resid(model_GPA))
#plot(resid(model)~gpaFile$ACT)

x<-qchisq(.10,139)
q<-qchisq(.9,139)
lower_gpa<-sqrt((139*(0.34^2))/q)
upper_gpa<-sqrt((139*(0.34^2))/x)
lower_gpa
upper_gpa