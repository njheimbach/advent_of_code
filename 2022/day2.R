# advent of code 2022 day2 ####

# part 1 ----
rm(list=ls())
#read in the txt file
rps <- read.table("~/Desktop/GitHub/advent_of_code/2022/aoc_2.txt")
# save character as numbers


#A for Rock
#B for Paper
#C for Scissors

#X for Rock
#Y for Paper
#Z for Scissors

# define the shapescore based on "our" reaction

for (i in 1:nrow(rps)) {
  if (rps$V2[i] == "X"){
    rps$shapescore[i] <- 1
  }else if (rps$V2[i] == "Y") {
    rps$shapescore[i] <- 2
  }else if (rps$V2[i] == "Z") {
    rps$shapescore[i] <- 3
  }
}

#define who if "lose", "win", or "tie"
for (i in 1:nrow(rps)) {
  if (rps$V2[i] == "X" & rps$V1[i] == "A"){
    rps$matchstatus[i] <- 3
  }else if (rps$V2[i] == "X" & rps$V1[i] == "B") {
    rps$matchstatus[i] <- 0
  }else if (rps$V2[i] == "X" & rps$V1[i] == "C") {
    rps$matchstatus[i] <- 6
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "A") {
    rps$matchstatus[i] <- 6
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "B") {
    rps$matchstatus[i] <- 3
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "C") {
    rps$matchstatus[i] <- 0
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "A") {
    rps$matchstatus[i] <- 0
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "B") {
    rps$matchstatus[i] <- 6
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "C") {
    rps$matchstatus[i] <- 3
  }
}

rps$sumscore <- rps$shapescore + rps$matchstatus

result <- sum(rps$sumscore)
result

# part 2 ----
rm(list=ls())
#read in the txt file
rps <- read.table("~/Desktop/GitHub/advent_of_code/2022/aoc_2.txt")
# save character as numbers




# define values for matchstatus 

for (i in 1:nrow(rps)) {
  if (rps$V2[i] == "X"){
    rps$matchstatus[i] <- 0
  }else if (rps$V2[i] == "Y") {
    rps$matchstatus[i] <- 3
  }else if (rps$V2[i] == "Z") {
    rps$matchstatus[i] <- 6
  }
}

#A for Rock
#B for Paper
#C for Scissors

#X for Rock
#Y for Paper
#Z for Scissors

#X lose
#Y draw
#Z win

#define our answer depending if its supposed to be a win/tie/lose
for (i in 1:nrow(rps)) {
  if (rps$V2[i] == "X" & rps$V1[i] == "A"){
    rps$myanswer[i] <- "Z"
  }else if (rps$V2[i] == "X" & rps$V1[i] == "B") {
    rps$myanswer[i] <- "X"
  }else if (rps$V2[i] == "X" & rps$V1[i] == "C") {
    rps$myanswer[i] <- "Y"
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "A") {
    rps$myanswer[i] <- "X"
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "B") {
    rps$myanswer[i] <- "Y"
  }else if (rps$V2[i] == "Y" & rps$V1[i] == "C") {
    rps$myanswer[i] <- "Z"
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "A") {
    rps$myanswer[i] <- "Y"
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "B") {
    rps$myanswer[i] <- "Z"
  }else if (rps$V2[i] == "Z" & rps$V1[i] == "C") {
    rps$myanswer[i] <- "X"
  }
}

#calculate value for our answer
for (i in 1:nrow(rps)) {
  if (rps$myanswer[i] == "X"){
    rps$shapescore[i] <- 1
  }else if (rps$myanswer[i] == "Y") {
    rps$shapescore[i] <- 2
  }else if (rps$myanswer[i] == "Z") {
    rps$shapescore[i] <- 3
  }
}


rps$sumscore <- rps$shapescore + rps$matchstatus

result <- sum(rps$sumscore)
result


