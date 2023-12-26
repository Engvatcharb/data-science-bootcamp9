## homework
install.packages("nycflights13")
install.packages("tidyverse")

## transform nycflights13

library(nycflights13)
library(tidyverse) # dplyr

## ask 5 questions about this data set

## load data to memory
data("flights")
## Know about each attribute of data set
?flights


## select filter arrange mutate summarise count

## Q1 : In month = 9, which manufacturer uses airplanes the most? Top 10 companies.

flights %>%
   filter (month == 9) %>%
   inner_join(planes,by = "tailnum") %>%
   group_by(month,manufacturer) %>%
   summarise(cnt = n()) %>%
   arrange(desc(cnt)) %>%
   head(10)   
   
## Q2 : summarize number of flight in each airline of month 9 
flights %>%
  filter (month == 9) %>%
  inner_join(airlines,by = "carrier") %>%
  group_by(carrier,name) %>%
  summarise(cnt = n()) %>%
  arrange(desc(cnt))     


## Q3 : Identify the top 10 types of airplanes and manufacturers that have the maximum total distance and the total amount of time spent in the air
  flights %>%
  filter (year == 2013) %>%
  inner_join(planes,by = "tailnum") %>%
  group_by (manufacturer,type,engine) %>%
  summarise(Total_distance = sum(distance,na.rm = TRUE),
            Total_AirTime_min = sum(air_time,na.rm= TRUE),
            Total_AirTime_hr = round(sum(air_time,na.rm= TRUE)/60,2),
            cnt = n()) %>%
  arrange(desc(Total_distance)) %>%
  head(10)


## Q4 : Create New Column speed_mph and Summarize mean speed for each airline company (Only Top 10 Row )
  flights %>%
    filter (year == 2013) %>%
    mutate (speed_mph = distance / (hour + (minute/60))) %>%
    inner_join(airlines,by = "carrier") %>%
    group_by(name,origin,dest) %>%
    summarise(mean_speed = mean(speed_mph)) %>%
    arrange(name,desc(mean_speed)) %>%
    head(10)

## Q5 : Which airports have the minimum delay time, arranged in descending order?
flights %>%
   filter (year == 2013) %>%
   inner_join(airlines,by = "carrier") %>%
   group_by(name) %>%
   summarise(Total_Delay = sum(dep_delay,na.rm = TRUE)) %>%
   arrange(Total_Delay) %>%
   head(10)
 

 

 
 
 
 
 
