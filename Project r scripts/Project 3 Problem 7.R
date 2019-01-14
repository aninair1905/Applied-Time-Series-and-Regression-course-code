library(ggplot2)
library(readxl)

Diamonds<-read_excel("C:/Users/naira/Documents/Project r scripts/Diamonds.xls")

#plot(Diamonds$Carat,Diamonds$TotalPrice)

#quadmodel<-lm(Diamonds$TotalPrice~poly(Diamonds$Carat,2,raw=TRUE))
quadmodel<-lm(Diamonds$TotalPrice ~ Diamonds$Carat + I(Diamonds$Carat^2))
#summary(quadmodel)
#lines(sort(Diamonds$Carat), fitted(quadmodel)[order(Diamonds$Carat)], col='red', type='b') 
#residQuad<-resid(quadmodel)
#plot(residQuad)
#rss <-c(crossprod(quadmodel$residuals))
#mse<-(rss/length(quadmodel$residuals))
#rmse<-sqrt(mse)
#rmse

#cubemodel<-lm(Diamonds$TotalPrice ~ Diamonds$Carat + I(Diamonds$Carat^2) + I(Diamonds$Carat^3))
#summary(cubemodel)
#lines(sort(Diamonds$Carat), fitted(cubemodel)[order(Diamonds$Carat)], col='red', type='b') 
#residCube<-resid(cubemodel)
#plot(residCube)
#rss <-c(crossprod(cubemodel$residuals))
#mse<-(rss/length(cubemodel$residuals))
#rmse<-sqrt(mse)
#rmse


DepthModel<-lm(Diamonds$TotalPrice ~ Diamonds$Depth + I(Diamonds$Depth^2))

#summary(DepthModel)
#residDepth<-lm(resid(DepthModel)~Diamonds$Depth)
#plot(residDepth)
#rss <-c(crossprod(DepthModel$residuals))
#mse<-(rss/length(DepthModel$residuals))
#rmse<-sqrt(mse)
#rmse

CaratAndDepthModel<-lm(Diamonds$TotalPrice~Diamonds$Carat+Diamonds$Depth + Diamonds$Carat*Diamonds$Depth)
#summary(CaratAndDepthModel)
#plot(resid(CaratAndDepthModel))
#rss <-c(crossprod(CaratAndDepthModel$residuals))
#mse<-(rss/length(CaratAndDepthModel$residuals))
#rmse<-sqrt(mse)
#rmse

SecOrderCondition<-lm(Diamonds$TotalPrice~Diamonds$Carat + I(Diamonds$Carat^2)+Diamonds$Depth + I(Diamonds$Depth^2)+Diamonds$Carat*Diamonds$Depth)
#summary(SecOrderCondition)
#rss <-c(crossprod(SecOrderCondition$residuals))
#mse<-(rss/length(SecOrderCondition$residuals))
#rmse<-sqrt(mse)
#rmse


LogSecOrderCondition<-lm(log(Diamonds$TotalPrice)~Diamonds$Carat + I(Diamonds$Carat^2)+Diamonds$Depth + I(Diamonds$Depth^2)+Diamonds$Carat*Diamonds$Depth)
plot(LogSecOrderCondition)
summary(LogSecOrderCondition)
rss <-c(crossprod(LogSecOrderCondition$residuals))
mse<-(rss/length(LogSecOrderCondition$residuals))
rmse<-sqrt(mse)
rmse
remove(Carat)
Carat = Diamonds$Carat
newline = data.frame(Carat = 0.5)
PI <-predict(LogSecOrderCondition,newline,interval="prediction")
PI[1,]
CI <-predict(LogSecOrderCondition,newline,interval="confidence")
PI[1,]

attach(Diamonds)
Carat
newlinetest = data.frame(Carat = 1.5)
PITest <-predict(quadmodel,newlinetest,interval="confidence")
PITest[1,]
mean(Carat)
mean(TotalPrice)
