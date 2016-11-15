#Create a vector with random values on a skewed distribution

normdata1 <- rnorm(10000, mean = 10, sd = 3)
normdata2 <- rnorm(100000, mean = 10, sd = 3)
expdata1 <- rexp(10000, rate = 1)
expdata2 <- rexp(100000, rate = 1)

#Produce histogram to show distribution of data

hist(normdata1)
hist(normdata2)
hist(expdata1)
hist(expdata2)

#Take 1000 samples of 10 values from skewdata, calculate their averages and
#assing them to the meandata vector

meannormdata1 <- c()
meannormdata2 <- c()
meanexpdata1 <- c()
meanexpdata2 <- c()

for(i in 1:1000){
  
  meannormdata1[i] <- c(mean(sample(normdata1,10,replace = FALSE,prob = NULL)))
  meannormdata2[i] <- c(mean(sample(normdata2,10,replace = FALSE,prob = NULL)))
  meanexpdata1[i] <- c(mean(sample(expdata1,10,replace = FALSE,prob = NULL)))
  meanexpdata2[i] <- c(mean(sample(expdata2,10,replace = FALSE,prob = NULL)))

  }

#Produce histogram to show distribution of sample means

hist(meannormdata1)
hist(meannormdata2)
hist(meanexpdata1)
hist(meanexpdata2)
