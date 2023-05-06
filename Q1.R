# Part a: Simulate a sample of 100 random data points from a normal distribution with mean 100 and standard deviation 5 and store the result in a vector
set.seed(123) # set a seed for reproducibility
data <- rnorm(100, mean = 100, sd = 5)

# Part b: Visualize the vector created above using different plots
hist(data, main = "Histogram of Simulated Data")
boxplot(data, main = "Boxplot of Simulated Data")
plot(density(data), main = "Density Plot of Simulated Data")

# Part c: Test the hypothesis that the mean equals 100
t.test(data, mu = 100)

# Part d: Use Wilcoxon test to test the hypothesis that the mean equals 90
wilcox.test(data, mu = 90, alternative = "two.sided")
