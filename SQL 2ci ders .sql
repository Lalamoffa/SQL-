create database [User]
use [User]
create table UserTable(
Id int primary key identity(1,1),
Fullname nvarchar(50) not null,
Gmail nvarchar(50) unique Check(Gmail Like '%@gmail.com'),
Gender nvarchar(10) Check (Gender in ('Male' , 'Female')),
Country nvarchar(50) default 'Azerbaycan'
)
INSERT INTO UserTable (Fullname, Gmail, Gender, Country)
VALUES
('John Doe', 'johndoe@gmail.com', 'Male', 'USA'),
('Jane Smith', 'janesmith@gmail.com', 'Female', 'Canada'),
('Michael Johnson', 'michaeljohnson@gmail.com', 'Male', 'Australia'),
('Emily Davis', 'emilydavis@gmail.com', 'Female', 'UK'),
('Christopher Brown', 'christopherbrown@gmail.com', 'Male', 'Germany'),
('Jessica Wilson', 'jessicawilson@gmail.com', 'Female', 'France'),
('Daniel Martinez', 'danielmartinez@gmail.com', 'Male', 'Spain'),
('Sarah Anderson', 'sarahanderson@gmail.com', 'Female', 'Italy'),
('Matthew Taylor', 'matthewtaylor@gmail.com', 'Male', 'Brazil'),
('Lauren Thomas', 'laurenthomas@gmail.com', 'Female', 'Argentina'),
('David White', 'davidwhite@gmail.com', 'Male', 'Mexico'),
('Elizabeth Garcia', 'elizabethgarcia@gmail.com', 'Female', 'Chile'),
('James Lee', 'jameslee@gmail.com', 'Male', 'South Africa'),
('Olivia Clark', 'oliviaclark@gmail.com', 'Female', 'Japan'),
('Andrew Hall', 'andrewhall@gmail.com', 'Male', 'South Korea');
select* from UserTable Where Fullname Like 'J%'
select* from UserTable Where Gender = 'Female'
delete from UserTable Where Id  = 8
alter table UserTable 
Add Password nvarchar(30) not null default 'qwert1234'
alter table UserTable
Add [Status] bit not null default 0
select* from UserTable Order by Id desc
select* from UserTable Order by Id offset 5 rows
select top (5) * from UserTable
select distinct (Country)'olkeler' from UserTable
