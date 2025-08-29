setwd("C:\\Users\\it24103913\\Desktop\\IT24103913")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

colnames(Delivery_Times) <- "Delivery_Time"

head(Delivery_Times)
str(Delivery_Times)

breaks <- seq(20, 70, length.out = 10)

hist(Delivery_Times$Delivery_Time, 
     breaks = breaks, 
     right = TRUE, 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time", 
     ylab = "Frequency", 
     col = "green", 
     border = "brown")


hist_data <- hist(Delivery_Times$Delivery_Time, 
                  breaks = breaks, 
                  right = TRUE, 
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

upper_bound <- hist_data$breaks[-1]

plot(upper_bound, cumulative_freq, type = "o", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time", 
     ylab = "Cumulative Frequency", 
     col = "black") 
   

