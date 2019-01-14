diff <- c(0,7,-7,-2,-12,14,-1,2,-2,-2, -13, 9,1,6, -12, 3,3,4,2,-5, 0,7,17,3,-14,-1,8,-4,8,-9,-1,6,2,-3,2,4,-2,2,-2)

ave_diff <- mean(diff)

nrep <- 10000

compare <- replicate(nrep, mean((diff) * sample(c(-1,1),length(diff),replace = T)) >=ave_diff)
dist <- replicate(nrep, mean((diff) * sample(c(-1,1),length(diff),replace = T)))
p <- sum(compare)/nrep

p

hist(dist)