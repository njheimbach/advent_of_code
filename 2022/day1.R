# advent of code 2022 day1 ####

# part 1 ----
rm(list=ls())
#read in the txt file
cal <- readLines("~/Desktop/aoc_1.txt")
# save character as numbers
calories <- as.numeric(as.character(cal))

# blanks  seperate each Elf 
# blanks are NAs


# show where there is an NA
position <- which(is.na(calories))


#manually add first and last item 
position <- c(1, position)
position <- c(position, length(calories))

position


# create empty df
elf_df <- matrix(nrow=(length(position)), ncol = 2)

colnames(elf_df) <- c("Elf", "Calories")

for (i in 1:(length(position)-1)){
  start <-position[i]
  end <- position[i+1]
  elfname <- sprintf("Elf_%s",as.character(i))
  elf_df[i,1]<- elfname
  elf_df[i,2] <- sum(calories[start:end], na.rm = T)
  rm(start)
  rm(end)
  #rm(elfname)
}

elf<- which.max(elf_df[,2])

as.numeric(elf_df[elf,2])
#70509


# part 2 


ordered_elfs <- sort(as.numeric(elf_df[,2]), decreasing = T)
top_3 <- sum(ordered_elfs[1:3])
top_3

