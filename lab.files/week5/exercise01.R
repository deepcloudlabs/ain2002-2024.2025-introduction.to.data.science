#Exercise 1: Simple Random Sampling
#Generate a simple random sample of 30 students from a dataset of 500 students.

# Create a dataset of 500 students
set.seed(42)  # Set seed for reproducibility
students <- data.frame(ID = 1:500, Score = rnorm(500, mean = 70, sd = 10))

# Simple Random Sampling of 30 students
sample_students <- students[sample(1:500, 30),]
print(sample_students)