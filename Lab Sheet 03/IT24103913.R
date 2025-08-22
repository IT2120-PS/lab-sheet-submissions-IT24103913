setwd("C:\\Users\\IT24103913\\Desktop\\IT24103913")

#1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

#2
str(branch_data)

#3
boxplot(branch_data$Sales_X1,
main = "Boxplot of Sales",
ylab = "Sales",
col = "lightgreen",
  border = "black")
    grid()
    
#4    
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#5
find_outliers <- function(x) {
  Q1 <- quantile (x, 0.25)
  Q3 <- quantile (x, 0.75)
  IQR <- Q3-Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q1 + 1.5 * IQR
  return (x[x < lower_bound | x > upper_bound])
}

outliers <- find_outliers(branch_data$Years_X3)
print(outliers)