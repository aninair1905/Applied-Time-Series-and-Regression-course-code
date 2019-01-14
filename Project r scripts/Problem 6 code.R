library(readxl)
library(ggplot2)


wine_data<- read_excel("C:/Users/naira/Documents/Project r scripts/Problem 6 dataset.xls")

regline <- lm(wine_data$Wine~wine_data$Mortality)

plot(wine_data$Mortality, wine_data$Wine, xlab="Wine", ylab="Mortality", main="Regression")
abline(regline, col="red")


summary(regline)


#oservational study very rare that the association is true. 