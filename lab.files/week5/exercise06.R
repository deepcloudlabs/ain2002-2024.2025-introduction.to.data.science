# Exercise 6: Hypothesis Testing (t-test)
# Test if the average height of students (sample) is significantly different from 170 cm.
set.seed(42)
sample_heights <- rnorm(50, mean = 168, sd = 5)

# Perform one-sample t-test
t_test_result <- t.test(sample_heights, mu = 170)
print(t_test_result)

