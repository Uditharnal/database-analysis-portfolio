# Database Analysis Portfolio

![SQL](https://img.shields.io/badge/SQL-MySQL%20%7C%20PostgreSQL-blue?logo=mysql)
![Excel](https://img.shields.io/badge/Excel-Microsoft%20365-green?logo=microsoftexcel)
![Power BI](https://img.shields.io/badge/Power%20BI-DAX%20%7C%20Data%20Modeling-yellow?logo=powerbi)

A comprehensive portfolio showcasing data analysis and database management skills using **SQL**, **Excel**, and **Power BI** — built to demonstrate real-world business analytics capabilities.

---

## Projects Overview

### 1. SQL - Sales Database Analysis

![SQL](https://img.shields.io/badge/Language-SQL-blue)

**Location:** `SQL-Projects/Sales-Database/`

A fully normalized sales database with complex analytical queries demonstrating advanced SQL skills.

**Key Skills:**
- Complex JOINs, CTEs, Window Functions
- RFM Customer Segmentation
- Stored Procedures & Views
- Query optimization and indexing

**Sample Query:**
```sql
SELECT c.CustomerName,
       COUNT(o.OrderID) AS TotalOrders,
       SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerName
ORDER BY TotalRevenue DESC;
```

[View SQL Project](./SQL-Projects/Sales-Database/README.md)

---

### 2. Excel - Financial Data Analysis

![Excel](https://img.shields.io/badge/Tool-Microsoft%20Excel-green)

**Location:** `Excel-Projects/Financial-Analysis/`

Interactive financial dashboard built in Microsoft Excel with pivot tables, KPI tracking, and automated reporting.

**Key Skills:**
- VLOOKUP, INDEX-MATCH, XLOOKUP, SUMIFS
- Pivot Tables & Pivot Charts
- Dynamic Arrays (FILTER, SORT, UNIQUE)
- Power Query & VBA Automation

[View Excel Project](./Excel-Projects/Financial-Analysis/README.md)

---

### 3. Power BI - Customer Analytics Dashboard

![Power BI](https://img.shields.io/badge/Tool-Power%20BI-yellow)

**Location:** `PowerBI-Projects/Customer-Analytics/`

Interactive Power BI dashboard with DAX measures, star schema data model, customer segmentation, and KPI reporting.

**Key Skills:**
- DAX Measures (CLV, Churn Rate, Growth %)
- Star Schema Data Modeling
- Power Query transformations
- Drill-through & Cross-filtering

[View Power BI Project](./PowerBI-Projects/Customer-Analytics/README.md)

---

## Tech Stack

| Tool | Skills |
|------|--------|
| SQL (MySQL/PostgreSQL) | Schema design, JOINs, CTEs, Window Functions, Stored Procedures |
| Microsoft Excel | Pivot Tables, Advanced Formulas, Power Query, VBA |
| Power BI | DAX, Data Modeling, Interactive Dashboards, RLS |

## About Me

Data analyst based in Toronto, ON with expertise in SQL, Excel, and Power BI. Passionate about turning raw data into actionable business insights.

**Connect:** [LinkedIn](https://linkedin.com) | [GitHub](https://github.com/Uditharnal)
