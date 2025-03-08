for (i in 1:10) {
  print(paste("loop", ":", i))
}
print("While loop:")
i <- 1
while (i <= 10) {
  if (i %% 2 == 0) {
    i <- i + 1
    next
  }
  if (i>7){
    break
  }
  print(paste("loop", ":", i))
  i <- i + 1
}
for (val in lapply(1:10,function(x) x^3)){
  print(val)
}