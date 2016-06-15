 # this is our first R script
 n <- 2 + 4 - 3
 round(3.14159)
 args(round)
 round(3.14159, digits=2)
 pi <- round(3.14159, digits=2)
 ?round
 ?kruskal.test
 data(iris)
 head(iris)
 str(iris)
 sessionInfo()
 
 weight_kg <- 55
 weight_kg
 (weight_kg <- 55)
 2.2 * weight_kg
 weight_lb <- 2.2 * weight_kg
 weight_lb
 weight_kg <- 100
 weight_kg 
 weight_lb
 
 mass <- 47.5
 age <- 122
 new_mass <- mass * 2.0
 new_age <- age - 20
 mass_index <- new_mass/new_age 
 
 weight_kg <- c(50, 60, 65, 82)
 class(weight_kg)
 animals <- c("bird","mouse","dog")
 class(animals)
 animals
 length(weight_kg)
 str(animals)
 str(weight_kg)
 
 weight_kg <- c(weight_kg, 90)
 
 num_char <- c(1, 2, 3, 'a')
 num_logical <- c(1, 2, 3, TRUE)
 char_logical <- c('a', 'b', 'c', TRUE)
 tricky <- c(1, 2, 3, '4')
 class(num_char)
 class(num_logical)
 class(char_logical)
 class(tricky)
 
 animals <- c("mouse","rat","dog","cat")
 animals[2]
 animals[c(3,2)]
 
 more_animals <- animals[c(1,2,3,4,1,4)]
 
 weight_g <- c(21, 34, 39, 54, 55)
 weight_g > 50
 weight_g[weight_g > 50]
 weight_g[weight_g < 30 | weight_g > 50]
 
 weight_g[weight_g >=30 & weight_g <= 50]
 weight_g >=30 & weight_g <= 50
 which(weight_g >=30 & weight_g <= 50)
 
 animals[animals=="cat"]
 animals[animals=="cat" | animals=="rat"]
 animals %in% c("rat","cat")
 animals[animals %in% c("rat","cat")]
 
 planets <- c("mercury","venus",'earth',NA)
 
 heights <- c(2,4,4,NA,6)
 class(heights)
 mean(heights)
 mean(heights, na.rm=TRUE)
 
 is.na(heights)
 heights[!is.na(heights)]
 na.omit(heights)
 heights[complete.cases(heights)]
 
 
setwd("C:/Users/matt/Downloads")
 
list.files()

surveys <- read.csv("surveys.csv")
 
# read.delim()

head(surveys) 

str(surveys)

sex <- factor(c("male","female","female","male"))
class(sex)
levels(sex)
nlevels(sex)
 

food <- factor(c("low","high","medium","high","low","medium"))
levels(food)
food <- factor(food, levels=c("low","medium","high"), ordered=TRUE)
min(food)

f <- factor(c(1,5,10,2))

as.numeric(f)
as.numeric(as.character(f))

f <- factor(c(1,5,10,2), levels=c(1,5,10,2,8))

surveys <- read.csv("surveys.csv", stringsAsFactors = FALSE)

tab <- factor(c(1,5,10,2,2,2,10))

table(tab)


exprmt <- factor(c("treat1", "treat2", "treat1", "treat3", "treat1", "control","treat1", "treat2", "treat3"), levels=c("treat1","treat2","treat3","control"), ordered=TRUE)

barplot(table(exprmt))

head(surveys)
nrow(surveys)
ncol(surveys)
dim(surveys)
names(surveys)
summary(surveys)

seq(1, 10)
seq(1, 10, by=2)
seq(1, 8, by=3)

surveys[1,3]
surveys[1:5,5:6]
surveys[ ,5]
surveys[5, ]

surveys[ ,"species_id"]
surveys$species_id
surveys[ ,c("species_id","weight")]

nrow(surveys)
seq(10, nrow(surveys), by=10)
surveys_by_10 <- surveys[seq(10, nrow(surveys), by=10), ]


surveys[surveys$year==1999,]

