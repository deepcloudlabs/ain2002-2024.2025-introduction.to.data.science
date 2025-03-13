# Exercise 5: Normal Distribution and Central Limit Theorem
# Generate a normally distributed dataset and compute a confidence interval.
set.seed(42)
sample_data <- rnorm(100, mean = 70, sd = 10)

# Compute 95% confidence interval
mean_val <- mean(sample_data)
sd_val <- sd(sample_data)
error_margin <- qt(0.975, df = 99) * (sd_val / sqrt(100))
conf_interval <- c(mean_val - error_margin, mean_val + error_margin)

print(conf_interval)
