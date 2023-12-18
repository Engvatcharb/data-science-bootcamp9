## Connect db
library(RPostgreSQL)
library(RSQLite)
library(glue)
library(tidyverse)

## create connection to sqlite.db file
con <- dbConnect(SQLite(),"pizza.db")
con_pros <- dbConnect(
        PostgreSQL(),
        host = "floppy.db.elephantsql.com",
        dbname = "tuhylmkl",
        user = "tuhylmkl",
        password = "QHYXeMm5-MPB6hEvb9F7FBlus_Q0bPKL",
        port = 5432)
##list Table
dbListTables(con)
dbListTables(con_pros)

##list fields/columns

dbListFields(con,"CUSTOMER")
dbListFields(con,"country")
dbListFields(con,"Ingredient")
dbListFields(con,"Menu_Pizza")
dbListFields(con,"ORDERS")
dbListFields(con,"Order_Pizza")
dbListFields(con,"Pizza_Ingredient")


## get data from database tables

customer <- data.frame(dbGetQuery(con, "select * from customer"))
country <- data.frame(dbGetQuery(con, "select * from country"))
ingredient <- data.frame(dbGetQuery(con, "select * from Ingredient"))
menu_Pizza <- data.frame(dbGetQuery(con, "select * from Menu_Pizza"))
orders <- data.frame(dbGetQuery(con, "select * from ORDERS"))
order_pizza <- data.frame(dbGetQuery(con, "select * from Order_Pizza"))
pizza_ingredient <- data.frame(dbGetQuery(con, "select * from Pizza_Ingredient"))

## write table to database
dbWriteTable(con_pros,"customer",customer)
dbWriteTable(con_pros,"country",country)
dbWriteTable(con_pros,"ingredient",ingredient)
dbWriteTable(con_pros,"menu_pizza",menu_Pizza)
dbWriteTable(con_pros,"orders",orders)
dbWriteTable(con_pros,"order_pizza",orders)
dbWriteTable(con_pros,"pizza_ingredient",orders)

dbListTables(con_pros)

dbGetQuery(con_pros, "select * from customer")
dbGetQuery(con_pros, "select * from country")
dbGetQuery(con_pros, "select * from ingredient")
dbGetQuery(con_pros, "select * from menu_pizza")
dbGetQuery(con_pros, "select * from orders")
dbGetQuery(con_pros, "select * from order_pizza")
dbGetQuery(con_pros, "select * from pizza_ingredient")


dbDisconnect(con)
dbDisconnect(con_pros)
