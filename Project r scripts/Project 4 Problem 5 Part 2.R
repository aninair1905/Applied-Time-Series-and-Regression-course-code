library(ggplot2)
library(readxl)

vote_model<-read_excel("C:/Users/naira/Documents/Project r scripts/vote.xlsx")

vote<-lm(vote_model$`percent vote for A`~ vote_model$prtystrA + vote_model$democA + vote_model$lexpendA+vote_model$lexpendB)

#summary(vote_model)
resid_vote<-vote$residuals

resid_model<-lm(resid_vote ~ vote_model$prtystrA + vote_model$democA + vote_model$lexpendA+vote_model$lexpendB)

summary(resid_model)

vote_resid_squared<-vote$residuals * vote$residuals

resdiSquaredModel<-lm(vote_resid_squared~vote_model$prtystrA + vote_model$democA + vote_model$lexpendA+vote_model$lexpendB)

summary(resdiSquaredModel)

(0.05256/4)/((1-0.05256)/168)