library(dplyr)
library(caret)

#Exercise 2: Stratified Sampling
#Perform stratified sampling where the population consists of 50% undergraduates, 30% master’s students, and 20% PhD students.

# Create a dataset with student types
students <- data.frame(
  ID = 1:500,
  Type = sample(c("Undergraduate", "Masters", "PhD"), 500, replace = TRUE, prob = c(0.5, 0.3, 0.2))
)

# Stratified sampling
set.seed(42)
stratified_sample <- students %>%
  group_by(Type) %>%
  sample_frac(size = 0.1)
print(stratified_sample)
