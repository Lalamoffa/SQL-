create database School
use School

create table kurs (
Id int primary key identity(1,1),
name nvarchar(50) not null
)
insert into kurs
values
('IT Brains'),
('Code Academy'),
('Back end'),
('Front end')
select * from kurs
drop table kurs

create table student (
Id int primary key identity(1,1),
name nvarchar(50) not null,
age int not null
)
insert into student
values
('Lale',21),
('Aytac',25),
('Senan',25),
('Gunel',24)
select * from student
drop table student

create table student_kurs(
Id int primary key identity(1,1),
studentId int not null,
kursId int not null,
foreign key (studentId) References student(Id),
foreign key (kursId) References kurs(Id)
)
insert into student_kurs
values
(1,2),
(2,1),
(1,1),
(3,4),
(4,3),
(4,2),
(4,4)
select * from student_kurs
drop table student_kurs
select s.name, k.name from student_kurs sk
Join student s on sk.studentId = s.Id
Join  kurs k on sk.kursId = k.Id