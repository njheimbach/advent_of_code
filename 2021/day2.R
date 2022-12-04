setwd("~/Desktop")
dive <- read.table("dive.txt", header = FALSE, sep = "", dec = ".")

forward = 0
depth = 0

for (row in 1:nrow(dive)) {
  if(substr(dive$V1[row], 1,1) == "f") {
    forward = forward + dive$V2[row]
  }
  if(substr(dive$V1[row], 1,1) == "d") {
    depth = depth + dive$V2[row]
  }
  if(substr(dive$V1[row], 1,1) == "u") {
    depth = depth - dive$V2[row]
  }
}

result = forward * depth

result

#check if correct

f = sum(dive$V2[dive$V1 == "forward"])
d = sum(dive$V2[dive$V1 == "down"])
u = sum(dive$V2[dive$V1 == "up"])

d-u

