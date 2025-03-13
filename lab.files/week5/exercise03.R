#Exercise 3: Binomial Distribution
#Simulate 100 coin flips and count the number of heads.
set.seed(42)
flips <- rbinom(100, size = 1, prob = 0.5)  # 1 = heads, 0 = tails
num_heads <- sum(flips)
print(num_heads)
