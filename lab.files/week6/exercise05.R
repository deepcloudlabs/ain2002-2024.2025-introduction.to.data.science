data(mtcars)
head(mtcars)
library(ggplot2)
mtcars$am <- factor(mtcars$am, levels = c(0,1), labels = c("Automatic","Manual"))
str(mtcars)
model5 <-  glm( am ~ hp + wt, data = mtcars, family = binomial)
summary(model5)

mtcars$predicted_prob <- predict(model5, type = "response")
head(mtcars[, c("am","predicted_prob")])
mtcars$predicted_class <- ifelse(mtcars$predicted_prob > 0.5, "Manual", "Automatic")
table(mtcars$am, mtcars$predicted_class)

ggplot(mtcars, aes(x = hp, y = predicted_prob, color = am)) +
  geom_point() +
  geom_smooth(method = "glm", method.args= list(family = "binomial"), se = FALSE)
  labs(title = "Logistic Regression: Probability of Manual Transmission",
       x = "Horsepower (hp)",
       y = "Predicted Probability")

ggplot(mtcars, aes(x = wt, y = predicted_prob, color = am)) +
  geom_point() +
  geom_smooth(method = "glm", method.args= list(family = "binomial"), se = FALSE)
  labs(title = "Logistic Regression: Probability of Manual Transmission",
       x = "Weight (wt)",
       y = "Predicted Probability")