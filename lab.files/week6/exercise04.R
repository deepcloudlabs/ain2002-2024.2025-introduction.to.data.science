library(glmnet)
data(mtcars)
head(mtcars)
x <- as.matrix(mtcars[, c("hp","wt","disp","cyl","qsec","drat","carb", "gear")])
y <- mtcars$mpg
model4 <- cv.glmnet(x,y,alpha = 1)
plot(model4)
coef(model4, s="lambda.min")
optimal_lambda <- model4$lambda.min
print(optimal_lambda)