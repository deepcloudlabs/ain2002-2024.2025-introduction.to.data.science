#Exercise 9: Convenience Sampling (CS)
#A researcher wants to survey students in a university cafeteria about their study habits. In this exercise, we'll simulate convenience sampling by selecting the first 50 students who arrive.

#We generate 500 students arriving at different times.
#Using convenience sampling, we select the first 50 students based on arrival order.
#This simulates a real-world scenario where a researcher surveys students who are easiest to reach (e.g., those present at the cafeteria at a given time).

set.seed(42)

# Create a dataset of 500 students arriving at the cafeteria
students <- data.frame(
  Student_ID = 1:500,
  Arrival_Time = sample(1:500, 500, replace = FALSE),  # Simulating arrival order
  Study_Hours = rnorm(500, mean = 4, sd = 1.5)  # Simulating study hours per day
)

# Select the first 50 students who arrive (convenience sampling)
convenience_sample <- students[order(students$Arrival_Time),][1:50,]

# Display sampled students
print(convenience_sample)
