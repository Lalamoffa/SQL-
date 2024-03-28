create database Employee
use Employee

create table Department
(
Id int primary key identity (1,1),
Name nvarchar (50) not null
)

insert into Department
Values
('Manager'),
('Airsaid Operation')

select*from Department


create table Employees
(
Id int primary key identity (1,1),
Name nvarchar (50),
DepartmentId int not null,
foreign key (DepartmentId) references Department(Id),
SalariesId int unique not null,
foreign key (SalariesId) references Salaries(Id)
);
insert into Employees
Values
('Gunel', 1,1)

select*from Employees

drop table Employees

create table Salaries(
Id int primary key identity (1,1),
amount float not null,
effective date not null
);

Insert into Salaries
Values
(1500,'2024-05-02')
select*from Salaries

select sum  (amount) as 'Cemi' from Salaries
select count (amount) as 'Sayi' from Salaries
select max  (amount) as 'En boyuk' from Salaries
select min  (amount) as 'En kicik' from Salaries
select Avg (amount) as 'Ededi orta' from Salaries