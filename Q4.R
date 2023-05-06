# Part a: Find the Pearson and Spearman correlation coefficients. Are they similar?
data(mammals)
pearson_corr <- cor(mammals$brainwt, mammals$bodywt, method = "pearson")
spearman_corr <- cor(mammals$brainwt, mammals$bodywt, method = "spearman")
print(paste("Pearson correlation coefficient:", pearson_corr))
print(paste("Spearman correlation coefficient:", spearman_corr))

# Part b: Plot the data using the plot command
plot(mammals$bodywt, mammals$brainwt, xlab = "Body Weight", ylab = "Brain Weight", main = "Body Weight vs. Brain Weight")

# Part c: Plot the logarithm (log) of each variable and see if that makes a difference
plot(log(mammals$bodywt), log(mammals$brainwt), xlab = "log(Body Weight)", ylab = "log(Brain Weight)", main = "log(Body Weight) vs. log(Brain Weight)")
