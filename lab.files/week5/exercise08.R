#Exercise 8: Cluster Sampling
#A country is divided into 10 regions, each containing 100 households. We will randomly select 3 entire regions and survey all households in those regions.
set.seed(42)

# Create a dataset of 1000 households divided into 10 clusters (regions)
households <- data.frame(
  Household_ID = 1:1000,
  Region = rep(1:10, each = 100),  # 10 regions, each with 100 households
  Income = rnorm(1000, mean = 50000, sd = 10000)  # Simulating household incomes
)

# Randomly select 3 regions (clusters)
selected_regions <- sample(unique(households$Region), 3)

# Select all households from the chosen regions
cluster_sample <- households[households$Region %in% selected_regions,]

# Display selected regions and sampled data
print(selected_regions)
print(cluster_sample)
