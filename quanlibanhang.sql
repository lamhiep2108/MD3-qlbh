create database  QuanLiBanHang;
use QuanLiBanHang;
create table Customer(
CustomerID int not null auto_increment primary key,
CustomerName varchar(50) not null,
CustomerAge  varchar(10) 
);
create table Orders(
OrdersID int not null auto_increment primary key,
CustomerID int not null unique key,
OrdersDate datetime,
OrderstotalPrice double not null);
alter table orders add foreign key(CustomerID)references Customer(CustomerID);
create table Product(
ProductID int not null primary key auto_increment,
ProductName varchar(50) not null,
ProductPrice double not null);
create table OrderDetail(
OrdersID int not null,
ProductID int not null,
OderQTY varchar(50) not null,
foreign key(OrdersID) references Orders(OrdersID),
foreign key(ProductID)references Product(ProductID)
);
