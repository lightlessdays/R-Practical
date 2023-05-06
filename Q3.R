# Part a: Count the number of observations per species
coweeta <- read.csv("Coweeta.csv")
table(coweeta$species)

# Part b: Take a subset of the data including only those species with at least 10 observations
subset_coweeta <- subset(coweeta, ave(coweeta$species, coweeta$species, FUN = length) >= 10)

# Part c: Make a scatter plot of biomass versus height, with the symbol colour varying by species, and use filled squares for the symbols. Also add a title to the plot, in italics.
plot(subset_coweeta$height, subset_coweeta$biomass, pch = 15, col = subset_coweeta$species, main = expression(italic("Scatter Plot of Biomass vs. Height")))

# Part d: Log-transform biomass, and redraw the plot
plot(subset_coweeta$height, log(subset_coweeta$biomass), pch = 15, col = subset_coweeta$species, main = expression(italic("Scatter Plot of log(Biomass) vs. Height")))
