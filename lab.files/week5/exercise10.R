#Exercise 10: Central Limit Theorem (CLT)
#We will demonstrate the Central Limit Theorem (CLT) by drawing multiple samples from a non-normal population and observing how the distribution of the sample means approximates a normal distribution.

#We generate a non-normal population (exponential distribution).
#We draw 1000 random samples of size 30 and compute their means.
#We plot the histogram of sample means and overlay a normal curve to observe the CLT in action.
#Even though the original population is not normal, the distribution of sample means is approximately normal, demonstrating the Central Limit Theorem.

set.seed(42)

# Generate a non-normal population (exponential distribution)
population <- rexp(10000, rate = 1 / 50)  # Mean = 50

# Function to draw samples and compute means
sample_means <- replicate(1000, mean(sample(population, size = 30, replace = TRUE)))

# Plot histogram of sample means
hist(sample_means, breaks = 30, col = "blue", main = "Distribution of Sample Means",
     xlab = "Sample Mean", probability = TRUE)

# Overlay normal curve
curve(dnorm(x, mean = mean(sample_means), sd = sd(sample_means)),
      col = "red", lwd = 2, add = TRUE)
