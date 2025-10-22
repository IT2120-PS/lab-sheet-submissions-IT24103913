#Lab 10
#Exercise

getwd()
setwd ("C:\\Users\\kavee\\Desktop\\Lab 10")

observed <- c(120, 95, 85, 100)

total <- sum(observed)

expected <- rep(total / 4, 4)

# Perform chi-squared test
chisq_test <- chisq.test(x = observed, p = rep(1/4, 4))
chisq_test
