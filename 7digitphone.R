all_phone_numbers <- permutations(10,7,v = 0:9)
n <- nrow(all_phone_numbers)
index <- sample(n,5)
all_phone_numbers[index,]
