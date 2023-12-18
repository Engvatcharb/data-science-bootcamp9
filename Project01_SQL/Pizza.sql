## Link for Page Pizza Restaurant
## https://encouraging-skateboard-459.notion.site/Project-1-Pizza-Restaurant-By-SQL-c4851b295d6a40be81b3a1689bdc0523?pvs=4
  
CREATE TABLE CUSTOMER (
  CustomerID INTEGER UNIQUE,
  CustNm TEXT,
  email TEXT,
  BirthDate date,
  Customer_CountryID INTEGER
);


CREATE TABLE ORDERS (
  OrderID TEXT UNIQUE,
  OrderDate date,
  CustomerID INTEGER,
  Total_Amount REAL,
  Delivery_Type TEXT
);

CREATE TABLE Order_Pizza (
  OrderID TEXT,
  PizzaID TEXT,
  UNIQUE (OrderID, PizzaID)
);

CREATE TABLE Menu_Pizza (
  PizzaID TEXT UNIQUE,
  Pizza_Desc TEXT,
  Price_Per_Each REAL
);

CREATE TABLE Pizza_Ingredient (
  PizzaID TEXT,
  IngredID TEXT,
  UNIQUE (PizzaID, IngredID)
);

CREATE TABLE Ingredient (
  IngredID TEXT UNIQUE,
  IngredName TEXT,
  No_Stock_Remain INTEGER,
  Min_Stock INTEGER
);

CREATE TABLE Country (
  CountryID 	INTEGER UNIQUE,
  CountryNm	TEXT
);

-- INSERT DATA CUSTOMER
INSERT INTO CUSTOMER VALUES (1,'Jenny','jenny@gmail.com','01/01/2000',1);
INSERT INTO CUSTOMER VALUES (2,'Henry','Henry@gmail.com','10/05/1996',2);
INSERT INTO CUSTOMER VALUES (3,'Marry','Marry@gmail.com','27/12/1900',3);
INSERT INTO CUSTOMER VALUES (4,'John','John@gmail.com','10/04/1997',1);
INSERT INTO CUSTOMER VALUES (5,'Jeffy','Jeffy@gmail.com','10/05/2002',3);
INSERT INTO CUSTOMER VALUES (6,'Gammy','Gammy@gmail.com','20/06/2019',2);
INSERT INTO CUSTOMER VALUES (7,'Anna','Anna@gmail.com','01/02/1997',4);
INSERT INTO CUSTOMER VALUES (8,'Pakpum','Pakpum@gmail.com','20/08/1995',1);
INSERT INTO CUSTOMER VALUES (9,'Creamy','Creamy@gmail.com','10/05/1994',2);

-- INSERT DATA COUNTRY
INSERT INTO Country VALUES (1,'Thailand ');
INSERT INTO Country VALUES (2,'Canada');
INSERT INTO Country VALUES (3,'Japan');
INSERT INTO Country VALUES (4,'USA');

--INSERT DATA ORDER
INSERT INTO ORDERS VALUES ('O001','11/05/2002',4,890,'At Store');
INSERT INTO ORDERS VALUES ('O002','20/06/2002',5,700,'Delivery');
INSERT INTO ORDERS VALUES ('O003','30/04/2002',6,650,'Delivery');
INSERT INTO ORDERS VALUES ('O004','05/06/2002',6,1020,'Delivery');
INSERT INTO ORDERS VALUES ('O005','15/03/2001',3,650,'At Store');
INSERT INTO ORDERS VALUES ('O006','16/07/2002',2,780,'Delivery');
INSERT INTO ORDERS VALUES ('O007','10/04/2001',9,900,'Delivery');
INSERT INTO ORDERS VALUES ('O008','06/08/2002',6,660,'At Store');
INSERT INTO ORDERS VALUES ('O009','10/03/2002',8,800,'Delivery');
INSERT INTO ORDERS VALUES ('O010','25/04/2001',7,1200,'At Store');
INSERT INTO ORDERS VALUES ('O011','30/05/2002',2,450,'At Store');
INSERT INTO ORDERS VALUES ('O012','07/08/2001',1,600,'At Store');
INSERT INTO ORDERS VALUES ('O013','05/09/2002',3,750,'At Store');
INSERT INTO ORDERS VALUES ('O014','08/05/2002',8,900,'Delivery');
INSERT INTO ORDERS VALUES ('O015','06/04/2002',4,1200,'Delivery');

--INSERT DATA MENU_PIZZA
INSERT INTO Menu_Pizza VALUES ('Pizza1','Pizza Art',250);
INSERT INTO Menu_Pizza VALUES ('Pizza2','Cheesy Pizza',650);
INSERT INTO Menu_Pizza VALUES ('Pizza3','Yummy Pizza',890);
INSERT INTO Menu_Pizza VALUES ('Pizza4','Healthy Pizza',255);
INSERT INTO Menu_Pizza VALUES ('Pizza5','Pizza Oven',235);
INSERT INTO Menu_Pizza VALUES ('Pizza6','Bacon Pizza',650);
INSERT INTO Menu_Pizza VALUES ('Pizza7','Cooking Pizza',235);
INSERT INTO Menu_Pizza VALUES ('Pizza8','Homemade Pizza ',125);
INSERT INTO Menu_Pizza VALUES ('Pizza9','Good Pizza',250);

-- INSERT DATA Order_Pizza
INSERT INTO Order_Pizza VALUES ('O001','Pizza5');
INSERT INTO Order_Pizza VALUES ('O001','Pizza8');
INSERT INTO Order_Pizza VALUES ('O0010','Pizza6');
INSERT INTO Order_Pizza VALUES ('O0010','Pizza8');
INSERT INTO Order_Pizza VALUES ('O0011','Pizza3');
INSERT INTO Order_Pizza VALUES ('O0012','Pizza3');
INSERT INTO Order_Pizza VALUES ('O0012','Pizza9');
INSERT INTO Order_Pizza VALUES ('O0013','Pizza5');
INSERT INTO Order_Pizza VALUES ('O0013','Pizza7');
INSERT INTO Order_Pizza VALUES ('O0013','Pizza8');
INSERT INTO Order_Pizza VALUES ('O0014','Pizza2');
INSERT INTO Order_Pizza VALUES ('O0015','Pizza6');
INSERT INTO Order_Pizza VALUES ('O002','Pizza3');
INSERT INTO Order_Pizza VALUES ('O002','Pizza6');
INSERT INTO Order_Pizza VALUES ('O003','Pizza1');
INSERT INTO Order_Pizza VALUES ('O003','Pizza5');
INSERT INTO Order_Pizza VALUES ('O004','Pizza2');
INSERT INTO Order_Pizza VALUES ('O005','Pizza5');
INSERT INTO Order_Pizza VALUES ('O005','Pizza7');
INSERT INTO Order_Pizza VALUES ('O006','Pizza2');
INSERT INTO Order_Pizza VALUES ('O007','Pizza4');
INSERT INTO Order_Pizza VALUES ('O008','Pizza3');
INSERT INTO Order_Pizza VALUES ('O008','Pizza7');
INSERT INTO Order_Pizza VALUES ('O009','Pizza3');

-- INSERT DATA Pizza_Ingredient
INSERT INTO Pizza_Ingredient VALUES ('Pizza1','Ing005');
INSERT INTO Pizza_Ingredient VALUES ('Pizza2','Ing003');
INSERT INTO Pizza_Ingredient VALUES ('Pizza3','Ing006');
INSERT INTO Pizza_Ingredient VALUES ('Pizza4','Ing002');
INSERT INTO Pizza_Ingredient VALUES ('Pizza5','Ing004');
INSERT INTO Pizza_Ingredient VALUES ('Pizza6','Ing004');
INSERT INTO Pizza_Ingredient VALUES ('Pizza7','Ing003');
INSERT INTO Pizza_Ingredient VALUES ('Pizza8','Ing006');
INSERT INTO Pizza_Ingredient VALUES ('Pizza9','Ing005');
INSERT INTO Pizza_Ingredient VALUES ('Pizza1','Ing006');
INSERT INTO Pizza_Ingredient VALUES ('Pizza2','Ing006');
INSERT INTO Pizza_Ingredient VALUES ('Pizza3','Ing001');
INSERT INTO Pizza_Ingredient VALUES ('Pizza4','Ing007');
INSERT INTO Pizza_Ingredient VALUES ('Pizza5','Ing003');
INSERT INTO Pizza_Ingredient VALUES ('Pizza6','Ing002');
INSERT INTO Pizza_Ingredient VALUES ('Pizza7','Ing001');
INSERT INTO Pizza_Ingredient VALUES ('Pizza8','Ing004');
INSERT INTO Pizza_Ingredient VALUES ('Pizza9','Ing003');
INSERT INTO Pizza_Ingredient VALUES ('Pizza3','Ing005');
INSERT INTO Pizza_Ingredient VALUES ('Pizza5','Ing001');
INSERT INTO Pizza_Ingredient VALUES ('Pizza6','Ing006');
INSERT INTO Pizza_Ingredient VALUES ('Pizza8','Ing001');
INSERT INTO Pizza_Ingredient VALUES ('Pizza9','Ing006');

-- INSERT DATA Ingredient
INSERT INTO Ingredient VALUES ('Ing001','Onion',20,5);
INSERT INTO Ingredient VALUES ('Ing002','Ham',10,3);
INSERT INTO Ingredient VALUES ('Ing003','Mushroom',25,2);
INSERT INTO Ingredient VALUES ('Ing004','Bacon',40,10);
INSERT INTO Ingredient VALUES ('Ing005','Chilli',10,2);
INSERT INTO Ingredient VALUES ('Ing006','Sausage',60,5);
INSERT INTO Ingredient VALUES ('Ing007','Pineapple',40,3);

.mode box
/* Checkin Data */  
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;
SELECT * FROM Order_Pizza;
SELECT * FROM Menu_Pizza;
SELECT * FROM Pizza_Ingredient;
SELECT * FROM Ingredient;
SELECT * FROM country;

/*  1. JOIN  */
select 
  cust.custnm,
  cust.email,
  ct.countrynm
from customer cust,country ct
where cust. Customer_CountryID = ct.countryid;


select 
  cust.custnm,
  cust.email,
  ord.orderid,
  ord.orderdate,
  me_piz.pizza_desc,
  ord.total_amount
from customer cust, orders ord , order_pizza ord_piz, Menu_Pizza Me_Piz
where cust.CustomerID = ord.CustomerID
and ord.orderID = ord_piz.orderID
and ord_piz.pizzaID = Me_Piz.pizzaID;

select 
  strftime('%Y-%m', date(substr(ord.orderdate,7,4)||'-'||
                       substr(ord.orderdate,4,2)||'-'||
             substr(ord.orderDate,1,2))) AS Year2,
    count(ord.OrderID) as Number_Of_Order,
  count(ord_piz.pizzaid) as Number_Of_Pizza,
  sum(Ord.Total_Amount) As Revenue_month
from ORDERS ord ,Order_Pizza ord_piz , Menu_Pizza me_piz
where ord.OrderID = ord_piz.OrderID
and ord_piz.PizzaID = me_piz.PizzaID
group by 1;


/* 2. Subquries or with */
  
select count(*) as Japan_Order_Standard
from orders 
  where customerid in (select customer.customerid 
                       from customer ,country
                       where customer.customer_countryid = country.countryid
                       and lower(country.countrynm) = "japan");

WITH ARRAY_JAPAN as
  (select customer.customerid 
   from customer ,country
   where customer.customer_countryid = country.countryid
   and lower(country.countrynm) = "japan")
SELECT COUNT(*) AS Japan_Order_WITHIN
from orders,ARRAY_JAPAN
where orders.customerid = ARRAY_JAPAN.customerid;
  

/* 3. Aggregate Functions */
select 
  Me_Piz.pizza_desc,
  count(*),
  sum(me_piz.Price_Per_Each)
from Menu_Pizza Me_Piz
LEFT JOIN order_pizza ord_piz
on Me_Piz.PizzaID = ord_piz.PizzaID
group by Me_Piz.Pizza_desc
order by Me_Piz.PizzaID;
