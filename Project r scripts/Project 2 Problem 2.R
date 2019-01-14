library(readxl)
library(ggplot2)


BankWalkTalkHeart <- read_excel("Project r scripts/BankWalkTalkHeart.xls")



heart_model<- lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Bank+BankWalkTalkHeart$Walk+BankWalkTalkHeart$Talk)
par(mfrow=c(3,1))
#plot(heart_model)
#hist(resid(heart_model))

#plot(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Bank)
#abline(lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Bank))

#plot(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Walk)
#abline(lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Walk))

#plot(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Talk)
#abline(lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Talk))

#summary(heart_model)
Heart_Bank<-lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Bank)
Heart_Walk<-lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Walk)
Heart_Talk<-lm(BankWalkTalkHeart$Heart~BankWalkTalkHeart$Talk)

#plot(resid(Heart_Bank))
#plot(resid(Heart_Walk))
#plot(resid(Heart_Talk))

hist(resid(Heart_Bank))
hist(resid(Heart_Walk))
hist(resid(Heart_Talk))
