## homework

## transform nycflights13

library(nycflights13)
library(tidyverse) # dplyr

## ask 5 questions about this data set

## load data to memory
data("flights")
## Know about each attribute of data set
?flights


## select filter arrange mutate summarise count

## Example Q. most flight carrier in sep 2013
flights %>%
    filter (month == 9 , year == 2013) %>%
    count(carrier) %>%
    arrange(desc(n)) %>%
    head(5)

### Package : sqldf
#install.packages("sqldf")
library(sqldf)

sqldf("select mpg,hp from mtcars 
       where hp >= 200")

sqldf("select avg(hp),max(hp),count(*) from mtcars")
