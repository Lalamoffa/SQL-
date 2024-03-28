create database Market;
use Market
create table Products (
    Id int PRIMARY KEY identity(1,1),
    Name NVARCHAR(100),
    Price int ,
    Brand NVARCHAR(50)
);
INSERT INTO Products (Name, Price, Brand)
VALUES
    ('Product1', 15, 'Brand1'),
    ('Product2', 12, 'Brand2'),
    ('Product3', 9, 'Brand3'),
    ('Product4', 20, 'Brand4'),
    ('Product5', 8, 'Brand5'),
    ('Product6', 11, 'Brand1'),
    ('Product7', 14, 'Brand2'),
    ('Product8', 7, 'Brand3'),
    ('Product9', 19, 'Brand4'),
    ('Product10', 6, 'Brand5');
SELECT * FROM Products
WHERE Price > 10;

SELECT Avg (Price) as 'Ededi orta' from Products

SELECT * FROM Products
WHERE Price < (SELECT AVG(Price) FROM Products);

--SELECT Products.Name, Products.Brand AS ProductInfo FROM Products
--WHERE LENGTH(Brand) > 5;