
setwd("~/Desktop")
dive <- read.table("dive3.txt", header = FALSE, sep = "", dec = ".", colClasses=c('character'))


l1 <- substr(dive$V1, 1,1)
l2 <- substr(dive$V1, 2,2)  
l3 <- substr(dive$V1, 3,3) 
l4 <- substr(dive$V1, 4,4)
l5 <- substr(dive$V1, 5,5)
l6 <- substr(dive$V1, 6,6) 
l7 <- substr(dive$V1, 7,7)
l8 <- substr(dive$V1, 8,8)
l9 <- substr(dive$V1, 9,9)
l10 <- substr(dive$V1, 10,10)
l11 <- substr(dive$V1, 11,11)
l12 <- substr(dive$V1, 12,12)

#define function for statistical mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

a1 <-as.character(Mode(l1))
a2 <-as.character(Mode(l2))
a3 <-as.character(Mode(l3))
a4 <-as.character(Mode(l4))
a5 <-as.character(Mode(l5))
a6 <-as.character(Mode(l6))
a7 <-as.character(Mode(l7))
a8 <-as.character(Mode(l8))
a9 <-as.character(Mode(l9))
a10 <-as.character(Mode(l10))
a11 <-as.character(Mode(l11))
a12 <-as.character(Mode(l12))

gamma <- paste(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)
gamma <- gsub(" ", "", gamma, fixed = TRUE) 
gamma <- as.integer(gamma)
gamma_result <- strtoi(gamma, base = 2)

b1 <- ifelse(a1 == "1", yes = "0", no = "1")
b2 <- ifelse(a2 == "1", yes = "0", no = "1")
b3 <- ifelse(a3 == "1", yes = "0", no = "1")
b4 <- ifelse(a4 == "1", yes = "0", no = "1")
b5 <- ifelse(a5 == "1", yes = "0", no = "1")
b6 <- ifelse(a6 == "1", yes = "0", no = "1")
b7 <- ifelse(a7 == "1", yes = "0", no = "1")
b8 <- ifelse(a8 == "1", yes = "0", no = "1")
b9 <- ifelse(a9 == "1", yes = "0", no = "1")
b10 <- ifelse(a10 == "1", yes = "0", no = "1")
b11 <- ifelse(a11 == "1", yes = "0", no = "1")
b12 <- ifelse(a12 == "1", yes = "0", no = "1")

epsilon <- paste(b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12)
epsilon <- gsub(" ", "", epsilon, fixed = TRUE) 
epsilon <- format(as.numeric(epsilon), scientific = F)
epsilon_result <- strtoi(epsilon, base = 2)


power_consumption <- gamma_result*epsilon_result
power_consumption
