library(ggplot2)
library(readxl)

stockton<-read_excel("C:/Users/naira/Documents/Project r scripts/stockton4.xls")

#sprice_model<-lm(log(stockton$sprice)~stockton$livarea + I(stockton$livarea^2)+stockton$age + I(stockton$age^2)+stockton$beds+ (stockton$livarea * stockton$beds) + (I(stockton$livarea^2) * stockton$beds) + (stockton$age * stockton$beds)+(I(stockton$age^2) * stockton$beds))

sprice_model<-lm(log(stockton$sprice)~stockton$livarea + I(stockton$livarea^2)+stockton$age + I(stockton$age^2)+stockton$beds+ (stockton$livarea * stockton$beds) + (I(stockton$livarea^2) * stockton$beds) + (stockton$age * stockton$beds)+(I(stockton$age^2) * stockton$beds))

#summary(sprice_model)
#then do the average values for the living area and age

sprice_model2<-lm(log(stockton$sprice)~stockton$livarea + I(stockton$livarea^2)+stockton$age + I(stockton$age^2)+ (stockton$livarea * stockton$beds))
#summary(sprice_model2)

sum_resid<- sum(resid(sprice_model)^2)
sum_resid2<- sum(resid(sprice_model2)^2)

aicValue<-log(sum_resid/1500)+(20/1500)
aicValue

aicValue2<-log(sum_resid2/1500)+(12/1500)
aicValue2

sc<-log(sum_resid/1500)+((10*log(1500))/1500)
sc

sc<-log(sum_resid2/1500)+((6*log(1500))/1500)
sc