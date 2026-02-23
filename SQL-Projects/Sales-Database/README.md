# Sales Database Analysis with SQL

## Query Preview

![SQL Query Results](https://i.imgur.com/WoAFWRT.png)

> **Project:** Sales Database built with SQL showcasing schema design, complex JOINs, CTEs, window functions, and business analytics queries.

## Overview

This project demonstrates database design and SQL query skills using a sales database scenario.

## Database Schema

The database consists of 4 main tables:
- **Customers**: Customer information
- **Products**: Product catalog
- **Orders**: Order transactions
- **OrderDetails**: Individual order line items

## Files

- `schema.sql`: Database schema creation script
- `analytics_queries.sql`: Business analytics queries
- `sample_data.sql`: Sample data insertion

## Skills Demonstrated

### Query Writing
- Complex JOINs (INNER, LEFT, RIGHT, FULL OUTER)
- Subqueries and Correlated Subqueries
- Common Table Expressions (CTEs)
- Window Functions (ROW_NUMBER, RANK, LAG, LEAD)
- Aggregate Functions (SUM, COUNT, AVG, MAX, MIN)

### Database Design
- Normalized schema (3NF)
- Primary and Foreign Keys
- Indexing for query optimization
- Stored Procedures and Views

### Business Analytics Queries
- Top 10 customers by revenue
- Monthly and yearly sales trends
- Product performance analysis
- RFM Customer Segmentation (Recency, Frequency, Monetary)
- Low inventory alerts
- Year-over-year growth analysis

## Sample Query

```sql
-- Top Customers by Revenue
SELECT 
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(od.Quantity * od.UnitPrice) AS TotalRevenue,
    AVG(od.Quantity * od.UnitPrice) AS AvgOrderValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerName
ORDER BY TotalRevenue DESC
LIMIT 10;
```

## Tools Used
- MySQL / PostgreSQL
- SQL Server Management Studio (SSMS)
- DBeaver for database visualization
