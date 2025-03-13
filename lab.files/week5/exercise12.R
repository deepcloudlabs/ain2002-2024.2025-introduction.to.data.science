#Exercise 12: Z-Test
#We will conduct a one-sample z-test to check if the average test score of students is significantly different from a known population mean.

# We generate a sample of test scores (normally distributed).
# We assume the population mean is 75 and population standard deviation is 10.
# We conduct a one-sample z-test to check if the sample mean is significantly different from 75.
# The z.test() function from the BSDA package is used to perform the test.

install.packages("BSDA")  # Install BSDA package if not already installed
library(BSDA)

set.seed(42)

# Generate a sample of 50 students' test scores (mean = 78, sd = 10)
sample_scores <- rnorm(50, mean = 78, sd = 10)

# Population mean (assumed known)
population_mean <- 75

# Population standard deviation (assumed known)
population_sd <- 10

# Perform one-sample z-test
z_test_result <- z.test(sample_scores, mu = population_mean, sigma.x = population_sd)

# Display results
print(z_test_result)
