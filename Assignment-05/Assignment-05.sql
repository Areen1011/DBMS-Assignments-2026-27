CREATE TABLE Customers(
    CustomerID NUMERIC(5) PRIMARY KEY,
    CustomerName VARCHAR(20),
    City VARCHAR(30),
    JoinDate DATE
);

CREATE TABLE Products(
    ProductID NUMERIC(5) PRIMARY KEY,
    ProductName VARCHAR(20),
    Category VARCHAR(20),
    Price DECIMAL(20,2)
);

CREATE TABLE Orders(
    OrderID NUMERIC(5) PRIMARY KEY,
    CustomerID NUMERIC(5),
    ProductID NUMERIC(5),
    Quantity NUMERIC(5),
    OrderDate DATE,

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers (CustomerID, CustomerName, City, JoinDate)
VALUES
(1, 'Rahul Sharma', 'Mumbai', '2025-06-15'),
(2, 'Amit', 'Pune', '2026-01-10'),
(3, 'Priya Patel', 'Pune', '2026-01-10'),
(4, 'Sneha Joshi', 'Mumbai', '2025-08-20'),
(5, 'Rohan Mehta', 'Delhi', '2026-03-05');

INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(101, 'Laptop', 'Electronics', 50000.00),
(102, 'Mobile', 'Electronics', 20000.00),
(103, 'Headphones', 'Electronics', 2000.00),
(104, 'Keyboard', 'Electronics', 2000.00),
(105, 'Database', 'Books', 2000.00);

INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate)
VALUES
(501, 1, 101, 2, '2026-01-15'),
(502, 2, 102, 6, '2026-02-10'),
(503, 3, 105, 3, '2026-02-15'),
(504, 4, 103, 8, '2026-03-20'),
(505, 1, 104, 5, '2025-12-10');

select CustomerName from Customers where CustomerID in(select CustomerID from Orders);

select ProductName from Products 
where ProductID in
(select ProductID from Orders);

select CustomerName from Customers 
where CustomerID in
(select CustomerID from Orders
where ProductID in
(select ProductID from Products 
where Category = 'Electronics'));

select OrderID,Quantity from Orders
where CustomerID in
(select CustomerId from Customers
where City = 'Mumbai');

select ProductName, Price from Products
where price in
(select price from Products
where Category= 'Books');

select CustomerName from Customers
where CustomerID in
(select CustomerID from Orders 
where Quantity > 5);

select ProductName from Products
where ProductID in
(select ProductID from Orders
where CustomerID in
(select CustomerID from Customers
where CustomerName= 'Rahul Sharma'));

select CustomerName from Customers
where CustomerID in
(select CustomerID from Orders
where OrderDate > '2026-01-01');

select ProductName, Category from Products
where Category =
(select Category from Products
where ProductName= 'Laptop');

select CustomerName from Customers
where City =
(select City from Customers
where CustomerName= 'Amit');

select ProductName, Price from Products
where Price =
(select Price from Products
where ProductName= 'Laptop');

select CustomerName, JoinDate from Customers
where JoinDate =
(select JoinDate from Customers
where CustomerName= 'Rahul');

select ProductName, Category from Products
where Category =
(select Category from Products
where ProductID= 102);

select * from Orders
where Quantity =
(select Quantity from Orders
where OrderId= 501);

select * from Orders
where CustomerID in 
(select CustomerID from Customers
where City = 
(select City from Customers
where CustomerID = 3));