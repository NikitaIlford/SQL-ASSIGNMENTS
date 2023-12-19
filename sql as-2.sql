create database Order_Stores_Data
2--------------------
Create table Orders_Table1 (OrderDate date,Region varchar(max),Rep varchar(max),Order_Item varchar(max),Units int,
Unit_Cost decimal(10,2),Total_Price decimal(10,2),Order_Id int)


Create table Stores_Table1(Store_Id int,StoreType varchar(max),Assortment int,CompetitionDistance int,Month int,
Year int,PromoInterval varchar(max))
-------------------------------
select * from Orders_Table1
select * from Stores_Table
3-------------
ALTER TABLE Orders_Table1
ALTER COLUMN Order_id int not null
-------------------------------
Alter Table
Orders_table1
ADD CONSTRAINT pk_orders_table1_order_id
PRIMARY KEY(Order_id)
-\4--------------------------
Alter table Stores_Table add Store_Names varchar(max)
5------------

ALTER TABLE Stores_Table
ADD FOREIGN KEY (Store_Id)REFERENCES Orders_Table1(Order_Id)
8------------------
Select Store_Id ,StoreType ,Assortment 'Store_Nos',CompetitionDistance,Month,
Year,PromoInterval,Store_Names from Stores_Table
9----------------------
SELECT
OrderDate,Region,Rep 'Customers_Name',Order_Item 'Item_Name',Units,
Unit_Cost,Total_Price,Order_Id
FROM 
Orders_Table1 
10------------
SELECT
OrderDate,Region,Rep 'Customers_Name',Order_Item 'Item_Name',Units,
Unit_Cost,Total_Price,Order_Id
FROM 
Orders_Table1 
ORDER BY Unit_Cost DESC

SELECT
OrderDate,Region,Rep 'Customers_Name',Order_Item 'Item_Name',Units,
Unit_Cost,Total_Price,Order_Id
FROM 
Orders_Table1 
ORDER BY Total_Price ASC



-------

SELECT
OrderDate,Region,Rep 'Cus_Name',Order_Item 'Item_Name',Units,
Unit_Cost,Total_Price,Order_Id
FROM 
Orders_Table1 
-----------------
select * from Orders_Table1
select * from Stores_Table

11-------------------
SELECT
OrderDate,Region,Rep 'Cus_Name',Order_Item 'Item_Name',Units,
Unit_Cost,Total_Price,Order_Id
FROM 
Orders_Table1 
Select Region,COUNT (*)
AS
'Total Customers'
FROM orders_table1
GROUP BY
Region

12------

SELECT 
SUM(Total_Price) 
AS
'SUM OF TOTAL PRICE' ,
SUM(Unit_Cost)
AS
'SUM OF UNIT COST'
FROM
Orders_Table1

------------------
select * from Orders_Table1
select * from Stores_Table

13-------------

CREATE TABLE
ORDER_STORES_TABLE(OrderDate VARCHAR(MAX),Unit_Cost VARCHAR(MAX),Store_Type varchar(max),Year VARCHAR(MAX))

SELECT* FROM ORDER_STORES_TABLE
----------------------------
INSERT INTO ORDER_STORES_TABLE(OrderDate,Unit_Cost,Store_Type,Year)
VALUES
('1/6/21','1.99','c','2008'),
('1/23/21','19.99','a','2008'),
('2/9/21','4.99','a','2007'),
('2/26/21','19.99','c','2006'),
('3/15/21','2.99','a','2009'),
('4/1/21','4.99','a','2015'),
('4/18/21','1.99','a','2013'),
('5/5/21','4.99','a','2014'),
('5/22/21','1.99','a','2000'),
('6/8/21','8.99','a','2009')

-----------------------------
select * from Orders_Table1
select * from Stores_Table
14------------------------------

SELECT
ORDER_ITEM,REGION,Order_Id
FROM
Orders_Table1
WHERE
Order_Id in( 4,5,6,9)

15-----------

SELECT DISTINCT YEAR,CompetitionDistance
FROM Stores_Table
WHERE
CompetitionDistance in(29910,310,3160)

16-------------
SELECT Order_Item  FROM Orders_Table1 where total_price >200 and Total_Price<400

17--------------
Select
CompetitionDistance as CD 
FROM
Stores_Table
SELECT COUNT (*) AS
'TOTAL CD'
FROM
STORES_TABLE

18---------
SELECT COUNT (*) AS
'TOTAL COUNT OF STORE TYPE',
COUNT (*) AS
'TOTAL COUNT OF CD'
FROM
STORES_TABLE

19---------
SELECT*
FROM Orders_Table1
CROSS JOIN
Stores_Table

20---------

DROP DATABASE Order_Stores_Data

---------------------------