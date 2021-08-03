num_rows <- nrow(data)
percentage_train <- 0.8
index <- round(num_rows*percentage_train)

# split data 
train <- data[1:index,]
test <- data[index:num_rows,]
