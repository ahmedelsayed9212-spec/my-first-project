CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Insert Customers
INSERT INTO Customers VALUES
(1, 'Ahmed Ali', 'ahmed@email.com'),
(2, 'Sara Mohamed', 'sara@email.com');

-- Insert Products
INSERT INTO Products VALUES
(1, 'Laptop', 15000.00),
(2, 'Mouse', 200.00);

-- Insert Orders
INSERT INTO Orders VALUES
(1, 1, '2025-02-01'),
(2, 2, '2025-02-05');

