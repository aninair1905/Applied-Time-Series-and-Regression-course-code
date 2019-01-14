library(ggplot2)
library(readxl)

CD_data<-read_excel("C:/Users/naira/Downloads/cdsstats.xlsx")

#head(CD_data)
#CDModel<- lm(CD_data$Price~CD_data$Age+CD_data$Net)

#summary(CDModel)

CDModel2<- lm(CD_data$Price~CD_data$Old+CD_data$Net)

summary(CDModel2)