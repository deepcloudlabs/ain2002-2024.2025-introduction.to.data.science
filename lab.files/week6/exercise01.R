data(mtcars)
head(mtcars)
model <- lm(mpg ~ hp, data = mtcars)
summary(model)
#Coefficients:
#            Estimate Std. Error t value Pr(>|t|)
#(Intercept) 30.09886    1.63392  18.421  < 2e-16 ***
#hp          -0.06823    0.01012  -6.742 1.79e-07 ***
library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red")
par(mfrow = c(2, 2))
plot(model)