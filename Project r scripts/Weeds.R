oneweed <- c(166.2, 157.3, 166.7, 161.1)
nineweed <- c(162.8, 142.4, 162.8, 162.4)

sombrero <- c(166.2, 157.3, 166.7, 161.1,162.8, 142.4, 162.8, 162.4)

nrep = 10000
dist <-replicate(nrep,mean(sample(sombrero,4,replace=F)))
compare=replicate(nrep,mean(sample(sombrero,4,replace=F))<=mean(nineweed))

nyes=sum(compare)

p=sum(compare)/nrep

nyes
p
hist(dist)


