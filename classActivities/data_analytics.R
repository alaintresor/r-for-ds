install.packages("dplyr")
install.packages("nycflights13")
install.packages("tidyverse")

library(nycflights13)
library(dplyr)
library(tidyverse)
flights


###Always start with the data set in brackets
#select observation of specific characters the FILTER Function(rows,observations)
jan<-filter(flights,month==1)
jan
newyear<-filter(flights,month ==1,day==1)
newyear
newyear2<-filter(flights,month ==1|month==12)
newyear2



#Arrange function:sorting,order
data_10<-arrange(flights,year,month,day)
late_flights<-arrange(flights,desc(arr_delay))
late_flights

#Select deals with columns of those features you are interested in
variables_selected<-select(flights,year,month,day)
variables_selected
variables_selected2<-select(flights,year:month)
variables_selected
variables_selected3<-select(flights,-(year:month))
variables_selected3

#function MUTATE creating,transform,delete a variables 




#group_by function
mtcars %>%
  group_by(cyl) %>%
  summarise(avg_mpg = mean(mpg),
            total_cars = n()) 

##########VISUALISATION###########

##GGPLOT2
install.packages('ggplot2')

mtcars
table(mtcars$cyl)

barplot(mtcars$cyl)

plot(mtcars$cyl)
