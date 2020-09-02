#####################################################
# Section 1 for POL-UA 850 
#####################################################

rm(list = ls()) # Clear your workspace

## ------------ 1. Basic arithmetic operations ------------ ##

5 - 3
5 / 3
5 ^ 3
5 * (10 - 3)
sqrt(4)    

## ------------ 2. Assignment: creating objects ------------ ##

result <- 5 + 3
result
print(result)

result <- 5 - 3
result

Jiawei <- "TA"
Jiawei
Jiawei <- "TA and grader"
Jiawei

jiawei

class(jiawei)
class(result)
class(sqrt)

## ------------ 3. Building block: one dimension vector ------------ ##

vec_1 <- c(12, 54, 34, 76, 90)
vec_1[2]

vec_2 <- c(10, 12, 37, 41, 59)

vec_1 + vec_2

vec_2[2,4]  ### why error
vec_2[c(2,4)]

## ------------ 4. Some simple built-in functions ------------ ##

length(vec_1) # n. elements in a vector 
min(vec_1)  # lowest value in a vector    
max(vec_1)  # highest value in a vector   
range(vec_1)  # range of a vector   
mean(vec_1)   # mean of a vector  
sum(vec_1) / length(vec_1) # mean of a vector (alternative)

## ------------ 5. Working with a data set ------------ ##

setwd("~/shared/Sections/Section 1")

# Load data #
UN <- read.csv("UNpop.csv") 
class(UN)

# Look at full data set #
View(UN)

# Getting a description of the data

head(UN) # see first 6 rows
head(UN, 10) # see first 10 rows

colnames(UN) #look at variable names
names(UN) 

nrow(UN) # n. of observations
ncol(UN) # n. of variables
dim(UN) # dimensionality of the data set
summary(UN) # summary statistics of all variables

# Call a specific variable: use the $ sign!
UN$year
UN$world.pop   ### TA: mention variable name

head(UN$year)

## Create a new variable
UN$unit_pop <- (UN$world.pop) * 1000

head(UN$unit_pop) # a new variable now in our data!


## Percentage ratios 

UN$popratio.mean <- UN$world.pop/mean(UN$world.pop)*100
head(UN$popratio.mean)                     



