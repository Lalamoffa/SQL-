--create database ListDMA
--use ListDMA
--create table StudentTable(
--Id int,
--name nvarchar(25),
--Surname nvarchar(25)
--)
--Insert into  StudentTable(Id,Name,Surname)
--Values
--(1,'Lala','Mammadova'),
--(2,'Gunel','xxx')
--select*from  StudentTable
--delete from StudentTable Where id=1;

--Update StudentTable
--set name = 'Sofia',surname='yyyy'
--where id=2;

create database Akademia
use Akademia
create table StudentTable(
Id int,
grade nvarchar(25),
fullname nvarchar(25),
birthdate nvarchar(25),
[group] int
)
INSERT into StudentTable (Id, grade, fullname, birthdate, [group])
VALUES
(1, 'A', 'John Doe', '1990-05-15', 1),
(2, 'B', 'Jane Smith', '1992-08-20', 1),
(3, 'C', 'Michael Johnson', '1988-03-10', 2),
(4, 'A', 'Emily Davis', '1995-11-25', 2),
(5, 'B', 'Christopher Brown', '1993-09-18', 1),
(6, 'C', 'Jessica Wilson', '1991-07-30', 2),
(7, 'A', 'Daniel Martinez', '1989-04-05', 1),
(8, 'B', 'Sarah Anderson', '1994-06-12', 2),
(9, 'C', 'Matthew Taylor', '1996-02-22', 1),
(10, 'A', 'Lauren Thomas', '1997-10-07', 2),
(11, 'B', 'David White', '1987-12-14', 1),
(12, 'C', 'Elizabeth Garcia', '1998-01-28', 2),
(13, 'A', 'James Lee', '1999-08-03', 1),
(14, 'B', 'Olivia Clark', '1990-06-09', 2),
(15, 'C', 'Andrew Hall', '1994-03-17', 1);
--select*from StudentTable Where fullname Like'L%'
--select*from StudentTable order by Id desc(azalan sira),(asc artan)
select * from StudentTable
delete from StudentTable Where Id = 3;
Update StudentTable
Set fullname = 'Jale', [group] = 7 where Id = 2;
