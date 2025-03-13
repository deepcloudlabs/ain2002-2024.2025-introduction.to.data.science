#Exercise 11: Confidence Interval (CI)
#We will calculate a 95% confidence interval for the mean height of students using a sample from a larger population.set.seed(42)

# We generate a population of student heights.
# We draw a random sample of 50 students.
# We calculate the sample mean and standard deviation.
# We use the t-distribution to compute the margin of error.
# Finally, we compute and display the 95% confidence interval.

set.seed(42)

# Generate a population of student heights (mean = 170 cm, sd = 10 cm)
population_heights <- rnorm(10000, mean = 170, sd = 10)

# Draw a random sample of 50 students
sample_heights <- sample(population_heights, size = 50)

# Calculate sample mean and standard deviation
sample_mean <- mean(sample_heights)
sample_sd <- sd(sample_heights)

# Compute margin of error using t-distribution
error_margin <- qt(0.975, df = 49) * (sample_sd / sqrt(50))

# Compute confidence interval
ci_lower <- sample_mean - error_margin
ci_upper <- sample_mean + error_margin

# Display results
cat("Sample Mean:", sample_mean, "\n")
cat("95% Confidence Interval: (", ci_lower, ",", ci_upper, ")\n")
