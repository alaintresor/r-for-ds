# Variable dec
num1<- 5
num2<-3
sum<-num1+num2
summary(sum)

# String
name<-"John doe"
name

#Vectors
age<- c(1,3,4,5,20,30,23,50)
age

class<- c("M","M","F")  

table(class) #table give use feq of categorical data

x <- c(1+0i, 2+4i)

#Graph
sd(age)
plot(age)
barplot(age)
boxplot(age)

#conditions
if (num1 > num2){
  "here"
}else{
  "out"
}

#[!]deep handling missing values, outliers and duplicates ?

#dataset creation
student_ids <-c(1,2,3,4,5)
math_scrore <-c(12,34,50,20,NA)
gender <-c("M","F","F","M","M")
scoredate <-data.frame(student_ids,math_scrore,gender)
summary(scoredate)
head(scoredate,n=3)
tail(scoredate)
scoredate


#To select single column( we use $)
scoredate$gender

data()
View(scoredate)
str(scoredate)

data('airquality')
variable.names(airquality)
str(airquality)
length(airquality$Day)

#apply function: it applies function to dataset
apply(airquality,2,mean)

#HOME WORK!-> import data from statistical package and database management systems
c(Mean=mean(scoredate$math_scrore),SD=sd(scoredate$math_scrore))

data('iris')
variable.names(iris)
iris
str(iris)
table(iris$Species)
mean(iris$Petal.Width[iris$Species=="setosa"])
mean(iris$Petal.Width[iris$Species=="virginica"])
"here"
by(iris$Petal.Width,iris$Petal.Length,mean)

boxplot(iris)

# Relationship between two categorical variables
data('UCBAdmissions')
ucba <- data.frame(UCBAdmissions)
head(ucba)
tail(ucba)
table(ucba$Dept)

# we use cross table to compare two categorical variables
cross <-xtabs(Freq~Gender+Admit,data=ucba)
cross
(cross <-xtabs(Freq~Gender+Admit,data=ucba))
prop.table(cross,1)

#
cross2 <-xtabs(Freq~Gender+Admit,data=ucba[ucba$Dept=="E",])
prop.table(cross2,1)

#A side-by-side bar chart (also called a clustered or double bar graph) 
#places discrete bars next to each other within the same category to compare 
#multiple sub-groups or data series

# Create sample data
data <- data.frame(
  hours = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  score = c(40, 45, 50, 52, 60, 65, 70, 72, 85, 90)
)

# Fit the linear regression model
model <- lm(score ~ hours, data = data)

# Display the results
summary(model)

plot(model, which = 1)

# we use attach function to attach dataset, so that we can directly access dataset variables
attach(data)2
score

#We use Sys.Date to get current date, and we use as.Date(format), to define date
dob <- as.Date("1982-02-10")
today <-Sys.Date()
difftime(today,dob,units = "d") #difftime to check difference in time

#missing data handling
# *Deleting records with missing value

#dyplr package
?nycflights13

