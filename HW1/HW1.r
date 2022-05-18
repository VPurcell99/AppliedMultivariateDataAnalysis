# Vincent Purcell
# Applied Multivariate Data Analysis - Summer 22 - HW1


# Q1 ------------------
print("Q1.a Beach/Mountains and Book/Movie Preferences")
data <- read.csv("class_data.csv")
colnames(data) <- c("grams","bakelike","beachmtn","bookmov") 
tab <- table(data$beachmtn, data$bookmov)
tab <- cbind(tab, Total = rowSums(tab))
tab <- rbind(tab, Total = colSums(tab))
print("Q1.a")
tab

# Q1.b.i -----------------
print("Q1.b Grams of Flour Summary")
mean(data$grams)
sd(data$grams)
summary(data$grams)

# Q.b.ii -----------------
boxplot(data$grams, main="Grams of Flour", ylab="grams")

# Q.b.iv -----------------
qqnorm(data$grams, main="Normal Quantile-Quantile Plot of Grams of Flour")

# Q.b.v -----------------
boxplot(data$grams~data$bakelike, main="GramsOfFlour~LikeBaking",
        xlab="Enjoy Baking", ylab="Grams of Flour Measured")

