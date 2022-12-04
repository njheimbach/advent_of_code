setwd("~/Desktop")
dive <- read.table("dive2.txt", header = FALSE, sep = "", dec = ".")

forward = 0
depth = 0
aim = 0

for (row in 1:nrow(dive)) {
  if(substr(dive$V1[row], 1,1) == "f") {
    X = dive$V2[row]
    forward = forward + dive$V2[row]
    depth = depth + aim * X
  }
  if(substr(dive$V1[row], 1,1) == "d") {
    #depth = depth + dive$V2[row]
    aim = aim + dive$V2[row]
  }
  if(substr(dive$V1[row], 1,1) == "u") {
    #depth = depth - dive$V2[row]
    aim = aim - dive$V2[row]
  }
}

result = forward * depth 

result
format(result, scientific = F)



