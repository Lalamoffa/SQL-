create database FastFood
use FastFood
create table Category(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null
)

create table Product(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null,
Description nvarchar(50) not null,
Prize float not null,
imageUrl nvarchar(200) not null,
CategoryId int not null,
Foreign key (CategoryId) References Category(Id)
)
select * from Product
drop table 