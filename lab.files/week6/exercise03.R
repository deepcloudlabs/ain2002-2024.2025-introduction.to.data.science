data(mtcars)
head(mtcars)
model3 = lm( mpg ~ poly(hp,2), data = mtcars)
summary(model3)

library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula= y ~ poly(x,2), col = "blue")
  labs(title = "Polynomial Regression: mpg vs hp",
       x = "Horsepower (hp)",
       y = "Miles per Gallon (mpg)")