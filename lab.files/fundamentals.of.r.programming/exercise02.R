# set (python) -> unique(R)
s1 <- unique(c(1, 2, 3, 4, 5, 6, 1, 3, 2, 2))
print(s1)
s2 <- unique(c(2,4,8,10))
s3 <- union(s1,s2)
print(s3)
s4 <- intersect(s1,s2)
print(s4)
s5 <- setdiff(s1,s2)
print(s5) # 1 3 5 6
s6 <- setdiff(s2,s1)
print(s6) # 8 10
