#Exercise 14: Gaussian (Normal) Distribution
#We will generate a normally distributed dataset, compute basic statistics, and visualize the distribution.


# We generate 1000 values from a normal distribution with a mean of 50 and a standard deviation of 15.
# We compute and display the mean and standard deviation.
# We plot a histogram and overlay the normal curve to visualize the Gaussian distribution.

set.seed(42)

# Generate 1000 data points from a normal distribution (mean = 50, sd = 15)
gaussian_data <- rnorm(1000, mean = 50, sd = 15)

# Compute basic statistics
mean_value <- mean(gaussian_data)
sd_value <- sd(gaussian_data)

# Display statistics
cat("Mean:", mean_value, "\n")
cat("Standard Deviation:", sd_value, "\n")

# Plot histogram of the normal distribution
hist(gaussian_data, breaks = 30, col = "blue", probability = TRUE, main = "Gaussian Distribution")

# Overlay normal curve
curve(dnorm(x, mean = mean_value, sd = sd_value),
      col = "red", lwd = 2, add = TRUE)
