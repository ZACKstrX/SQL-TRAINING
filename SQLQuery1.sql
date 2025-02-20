use myDB
create table cusomers(
customerID INT PRIMARY KEY ,
firstName nvarchar(255),
lastName nvarchar(255),
address nvarchar(255),
city nvarchar(100),
mobile nvarchar (15),
email nvarchar(50)
)
create table products (
productID int primary key ,
name nvarchar (255),
color nvarchar(25),
price float
)
create table orders (
orderId int primary key , 
customerID int,
orderDate date,
shipperDate DATE
)
create table orderDetails (
orderID int,
productID int,
Quantity int
)