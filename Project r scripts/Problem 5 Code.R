library(readxl)
library(ggplot2)


Baby_breathe<- read_excel("C:/Users/naira/Documents/Project r scripts/Problem 5 dataset.xls")

regline <- lm(log(Baby_breathe$Rate)~Baby_breathe$Age)

plot(Baby_breathe$Age, log(Baby_breathe$Rate), xlab="Age", ylab="Log Rate", main="Regression")
abline(regline, col="red")



temp_var <- predict(regline, interval="prediction")

new_df <- cbind(Baby_breathe, temp_var)

ggplot(new_df, aes(Baby_breathe$Age, log(Baby_breathe$Rate)))+
  geom_point() +
  geom_line(aes(y=lwr), color = "red", linetype = "dashed")+
  geom_line(aes(y=upr), color = "red", linetype = "dashed")+
  geom_smooth(method=lm, se=TRUE)

summary(cbind(Baby_breathe,temp_var))



