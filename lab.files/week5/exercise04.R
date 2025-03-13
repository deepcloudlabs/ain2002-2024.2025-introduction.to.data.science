#Exercise 4: Poisson Distribution
#Simulate the number of calls received by a call center per minute, assuming an average of 5 calls per minute.
set.seed(42)
calls <- rpois(60, lambda = 5)  # Simulate for 60 minutes
print(calls)
hist(calls, main = "Poisson Distribution of Calls", col = "blue", breaks = 10)
