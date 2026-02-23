-- Sales Database Schema
-- Created for portfolio demonstration

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    PostalCode VARCHAR(20),
    CreatedDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2) NOT NULL,
    StockQuantity INT DEFAULT 0,
    SupplierID INT,
    CreatedDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ShipDate DATETIME,
    TotalAmount DECIMAL(10, 2),
    OrderStatus VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create indexes for performance
CREATE INDEX idx_customer_email ON Customers(Email);
CREATE INDEX idx_order_date ON Orders(OrderDate);
CREATE INDEX idx_product_category ON Products(Category);