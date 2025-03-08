m1 <- matrix(c(2,1,3,4, 3, 5, 2, 1, 1, 2, 4, 3, 4, 6 ,1 ,5),nrow=4,ncol=4,byrow = TRUE)
print(m1)
m2 <- 4 * m1 # element-wise
m3 <- m1 * m2 # element-wise
m4 <- m1 %*% t(m1) # matrix multiplication
m5 <- t(m4)  # m4.T
det(m4) # numpy ->linalg.det(m1)
m6 <- solve(m1) # numpy ->linalg.inv(m1)
identity <- m4 %*% solve(m4)