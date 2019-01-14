goodNote <- c(20.8,18.7, 19.9,20.6,21.9,23.4, 22.8, 24.9, 22.2, 20.3, 24.9, 22.3, 27, 20.5, 22.2, 24, 21.2, 22.1, 22, 22.7)
badNote <- c(18,19.1,19.2, 18.8, 18.4, 19, 18.5, 16.1, 16.8, 14, 17, 13.6, 17.5, 20, 20.2, 18.8, 18, 23.2, 18.2, 19.4)

sombrero <- c(goodNote, badNote)

nrep = 10000
dist <-replicate(nrep,mean(sample(sombrero,20,replace=F)))
compare=replicate(nrep,mean(sample(sombrero,20,replace=F))>=mean(goodNote))

nyes = sum(compare)

p=sum(compare)/nrep


nyes
p
hist(dist)