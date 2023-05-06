library(DMwR) # load the DMwR package

# Part a: Create a graph that you find adequate to show the distribution of the values of algae a6
hist(Algae$a6, main = "Histogram of Algae a6", xlab = "Algae a6", ylab = "Frequency")

# Part b: Show the distribution of the values of size 3
hist(Algae[Algae$size == 3, "a6"], main = "Histogram of Algae a6 for Size 3", xlab = "Algae a6", ylab = "Frequency")

# Part c: Check visually if oPO4 follows a normal distribution
qqnorm(Algae$oPO4)
qqline(Algae$oPO4)

# Part d: Produce a graph that allows you to understand how the values of NO3 are distributed across the sizes of river
boxplot(Algae$NO3 ~ Algae$riverSize, main = "Boxplot of Algae NO3 by River Size", xlab = "River Size", ylab = "Algae NO3")

# Part e: Using a graph check if the distribution of algae a1 varies with the speed of the river
boxplot(Algae$a1 ~ Algae$riverSpeed, main = "Boxplot of Algae a1 by River Speed", xlab = "River Speed", ylab = "Algae a1")

# Part f: Visualize the relationship between the frequencies of algae a1 and a6
plot(table(Algae$a1, Algae$a6), main = "Relationship between Frequencies of Algae a1 and a6", xlab = "Algae a1", ylab = "Algae a6")

