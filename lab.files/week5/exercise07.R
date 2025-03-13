# Exercise 7: Chi-Square Test for Independence
# Test if gender and smoking habits are independent.
set.seed(42)
gender <- sample(c("Male", "Female"), 200, replace = TRUE)
smoking <- sample(c("Smoker", "Non-Smoker"), 200, replace = TRUE)
data <- table(gender, smoking)

# Perform Chi-Square Test
chi_test <- chisq.test(data)
print(chi_test)


