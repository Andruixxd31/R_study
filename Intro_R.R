#Introdution to R
#The lines that are selected are the ones being runned 
#R in snot a trong typed language
#to separate words we use a point to in between words
#cmd + enter: compiles the line
#cmd + shft + enter shifts the whole code 
#primary types 
var.logical <- T | F | TRUE | FALSE 
var.logical
class(var.logical)
var.character <- "Alberto" #or var.character = "Alberto"
class(var.character)
# the arrow points to the variable name 
#The next is valid 5 -> var.x
var.character <- 5 
var.character <- "Hey"

var.integer <- 5L 
var.integer <- as.integer(8)
class(var.integer)

var.numeric <- 4.8
class(var.numeric)

?complex #gets help from R, its like man pages
var.complex <- complex(real=10, imaginary=9)  #functions
var.complex
var.complex <- complex(1,10,9) #first parameter prints only one


#arrays 
vec.1 <- c(1,2,4,7) #c is concatenate
vec.1[3] #R is one based index
vec.1[0] #0 returns the type of the array
vec.1[-1] #removes the first element
vec.2 <- c(1,0,1,0,10000000) #every number that is different to 0 is true
vec.3 <- as.logical(vec.2)
vec.3
vec.4 <- c(var.logical, var.character, var.complex,
           var.numeric, var.integer)
vec.4 #trensforms everything to the most general type which is char
vec.5 <- c("100", "200", "cat")
vec.6 <- as.numeric(vec.5)
vec.6 #gives a wrning but stills compiles 

vec.7 <- 1:100 #generates an array from 1 to 100
vec.7 + 1 #adds one to all the values of vec.7

vec.8 <- 1:10
vec.9 <- 1:5 
vec.8 + vec.9 #adds iteratively the values of vec.8 to vec.9 
vec.8 + vec.9 

#matrix
?matrix
mtx.1 <- matrix(1:100, nrow=10, ncol=10)
mtx.1

mtx.2 <- matrix(data=1:100, nrow=10, ncol=10, byrow=TRUE) #sortes value by row first, #data is a parameter
mtx.2

mtx.1 == mtx.2
mtx.1 == t(mtx.2) #t is transposed


#List
list.1 <- list(number=var.numeric, integer = var.integer, char=var.character,
               logical = var.logical, imaginary=var.complex)
list.1$imaginary #the dollar lets me choose the type of value to get from the list
list.1[[1]] #gets the content
class(list.1[1])#gets me 
list.1[["logical"]]
list.1

#class info
info.andres <- data.frame(
  name="andres",
  lastname = "diaz de leon", 
  age = 21, 
  zipcode = 45238,
  highest.education.degree = "highschool",
  favourite.color = "blue", 
  significant.other = F, 
  music.genre = "rock", 
  favourite.book = "the fall", 
  favourite.saga = "lord of the rings",
  semester = 4, 
  luckynumber = 7, 
  soccer.team = "cuervos", 
  nationality = "usa and mexico",
  number.siblings = 2, 
  height = 1.80
)

info.fernando <- data.frame(
  name="fernando",
  lastname = "benavides",
  age= 21,
  zipcode = 48900,
  highest.education.degree = "high school",
  favourite.color = "green",
  significant.other = T,
  music.genre = "pop",
  favourite.book = "outliers",
  favourite.saga = "Batman",
  semester = 6,
  luckynumber = 12,
  soccer.team = "america",
  nationality = "mexico",
  number.siblings = 2,
  height = 1.72
)

students.data <-rbind(info.andres, info.fernando)
colnames(info.andres)
colnames(info.fernando)

