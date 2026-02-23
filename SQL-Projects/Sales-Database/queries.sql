-- Sample SQL Queries for Sales Analysis
-- Demonstrates various SQL skills and techniques

-- 1. Top 10 customers by total purchase amount
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    c.Email,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName, c.Email
ORDER BY TotalSpent DESC
LIMIT 10;

-- 2. Monthly sales trend with year-over-year comparison
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    COUNT(OrderID) AS OrderCount,
    SUM(TotalAmount) AS MonthlyRevenue,
    AVG(TotalAmount) AS AvgOrderValue
FROM Orders
WHERE OrderStatus = 'Completed'
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month DESC;

-- 3. Product performance analysis
SELECT 
    p.ProductID,
    p.ProductName,
    p.Category,
    COUNT(od.OrderDetailID) AS TimesSold,
    SUM(od.Quantity) AS TotalQuantitySold,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount/100)) AS TotalRevenue
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName, p.Category
ORDER BY TotalRevenue DESC;

-- 4. Customer segmentation using RFM analysis
WITH CustomerRFM AS (
    SELECT 
        c.CustomerID,
        CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
        DATEDIFF(CURDATE(), MAX(o.OrderDate)) AS Recency,
        COUNT(DISTINCT o.OrderID) AS Frequency,
        SUM(o.TotalAmount) AS Monetary
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    WHERE o.OrderStatus = 'Completed'
    GROUP BY c.CustomerID, c.FirstName, c.LastName
)
SELECT 
    CustomerID,
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    CASE 
        WHEN Recency <= 30 AND Frequency >= 5 AND Monetary >= 1000 THEN 'VIP'
        WHEN Recency <= 60 AND Frequency >= 3 THEN 'Active'
        WHEN Recency <= 180 THEN 'At Risk'
        ELSE 'Inactive'
    END AS CustomerSegment
FROM CustomerRFM
ORDER BY Monetary DESC;

-- 5. Inventory alert for low stock products
SELECT 
    ProductID,
    ProductName,
    Category,
    StockQuantity,
    UnitPrice,
    (StockQuantity * UnitPrice) AS InventoryValue
FROM Products
WHERE StockQuantity < 20
ORDER BY StockQuantity ASC;