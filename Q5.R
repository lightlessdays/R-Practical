# Load the UScereal dataset from the MASS library
library(MASS)
data(UScereal)

# Part a: Relationship between manufacturer and shelf
barplot(table(UScereal$manufacturer, UScereal$shelf), beside = TRUE, legend.text = TRUE, xlab = "Manufacturer", ylab = "Count", main = "Manufacturer vs. Shelf")

# Part b: Relationship between fat and vitamins
plot(UScereal$fat, UScereal$vitamins, xlab = "Fat", ylab = "Vitamins", main = "Fat vs. Vitamins", pch = 20, col = "blue")

# Part c: Relationship between fat and shelf
boxplot(UScereal$fat ~ UScereal$shelf, xlab = "Shelf", ylab = "Fat", main = "Fat vs. Shelf")

# Part d: Relationship between carbohydrates and sugars
plot(UScereal$carbo, UScereal$sugars, xlab = "Carbohydrates", ylab = "Sugars", main = "Carbohydrates vs. Sugars", pch = 20, col = "green")

# Part e: Relationship between fibre and manufacturer
barplot(tapply(UScereal$fiber, UScereal$manufacturer, mean), xlab = "Manufacturer", ylab = "Fiber", main = "Manufacturer vs. Fiber")

# Part f: Relationship between sodium and sugars
plot(UScereal$sodium, UScereal$sugars, xlab = "Sodium", ylab = "Sugars", main = "Sodium vs. Sugars", pch = 20, col = "red")
