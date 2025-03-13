#Exercise 13: Bernoulli Distribution
#We will simulate a Bernoulli trial where each trial has a binary outcome (success/failure). We'll generate and visualize the results.

# We simulate 100 Bernoulli trials, where each trial has a 60% probability of success (e.g., flipping a biased coin).
# The rbinom() function is used to generate binary outcomes (0 = failure, 1 = success).
# We visualize the results using a bar plot.

set.seed(42)

# Simulate 100 Bernoulli trials with probability of success p = 0.6
bernoulli_trials <- rbinom(100, size = 1, prob = 0.6)

# Display first 10 outcomes
print(bernoulli_trials[1:10])

# Visualize the distribution of outcomes
barplot(table(bernoulli_trials),
        names.arg = c("Failure (0)", "Success (1)"),
        col = c("red", "blue"),
        main = "Bernoulli Distribution",
        ylab = "Frequency")

