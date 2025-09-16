setwd ("C:\\Users\\kavee\\Desktop\\Lab 6")

#Exercise
#1
#i. 
#X ~ bin(n = 50, p = 0.85)

#ii.
n <- 50
p <- 0.85

prob_at_least_47 <- sum (dbinom (47:50, size = n, prob = p))
prob_at_least_47

#2
#i. 
#X = number of calls received in one hour

#ii. 
#X ~ poisson (lambda = 12)

#iii.
lambda <- 12
prob_15 <- dpois (15, lambda)
prob_15
