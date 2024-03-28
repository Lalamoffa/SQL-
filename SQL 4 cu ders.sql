Create database Company 
use Company
create table Departement(
Id int primary key identity (1,1),
[Name] nvarchar (50)
)
insert into Departement
Values
('IT Brains')

select * from Departement

Create table Customers (
Id int primary key identity (1,1),
[Name] nvarchar (50),
Surname nvarchar (50),
Salary float,
DepartementId int not null,
Foreign key(DepartementId ) References Departement(Id) 
)
drop table  Customers
insert into Customers
Values
('Jale','Memmedova',5000,2),
('Lala','Memmedova',8000,1),
('Gunel','Eliyeva',3000,3)
select* from Customers Where Salary > (select Avg(Salary)from Customers )

delete from Customers Where Id = 2;

select sum  (Salary) as 'Cemi' from Customers
select count (Salary) as 'Sayi' from Customers
select max  (Salary) as 'En boyuk' from Customers
select min  (Salary) as 'En kicik' from Customers
select Avg (Salary) as 'Ededi orta' from Customers
