# part 1 ----

setwd("~/Desktop/advent_of_code/")
fish <- read.table("day7.txt", header = FALSE, sep = ",", dec = ".")
colnames(fish)<-NULL
rownames(fish)<-NULL

# transpose so that you have one column with all the values
coordinates <- data.frame(t(fish[1,]))


# get median
best_coordinate <- median(coordinates$X1)

#make median its own column
coordinates$X2 <- best_coordinate


# calculate cost by median - actual position
coordinates$COST <- coordinates$X2 -coordinates$X1 

# get the absolute value 
coordinates$COST <- abs(coordinates$COST)

# sum up the cost to get result
result <- sum(coordinates$COST)
result 

rm(result)
rm(fish)
rm(coordinates)
rm(best_coordinate)




# part 2 ----
setwd("~/Desktop/advent_of_code/")
fish <- read.table("day7.txt", header = FALSE, sep = ",", dec = ".")
colnames(fish)<-NULL
rownames(fish)<-NULL

# transpose so that you have one column with all the values
coordinates <- data.frame(t(fish[1,]))

#define a "result" which is very very high 
result <- 10000000000


for (i in 0:1985) {
  a <- (ncol(coordinates)+1)
  coordinates[,a] <- i
  coordinates[,(a+1)] <- abs(coordinates[,a] - coordinates$X1)
  coordinates[,(a+2)] <- (coordinates[,(a+1)] * (coordinates[,(a+1)]+1))/2
  try <- sum(coordinates[,(a+2)])
  if (try < result) {
    result <- try
    magic_number <- i
  }
}

result
