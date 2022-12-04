# part 1 ----

setwd("~/Desktop/advent_of_code/")
boat <- read.table("day1.txt", header = FALSE, sep = ",", dec = ".")


for (row in 1:nrow(boat)) {
  boat$change[row] <- ifelse(boat$V1[row] > boat$V1[(row-1)], yes = "increased", no = "decreased") 
}

increased <- sum(boat$change == "increased", na.rm = T) 
decreased <- sum(boat$change == "decreased", na.rm = T) 

increased 
