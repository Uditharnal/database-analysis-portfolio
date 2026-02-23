# Customer Analytics Dashboard - Power BI

## Dashboard Preview

![Power BI Customer Analytics Dashboard](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/New_Power_BI_Logo.svg/200px-New_Power_BI_Logo.svg.png)

> **Project:** Interactive Power BI dashboard providing comprehensive customer insights, KPI tracking, churn analysis, and revenue trend visualization using DAX and data modeling.

## Overview

Interactive Power BI dashboard providing comprehensive customer insights and analytics.

## Dashboard Features

### Key Metrics
- Total customers and growth rate
- Customer lifetime value (CLV)
- Churn rate and retention
- Average order value
- Customer acquisition cost

### Visualizations
- Customer segmentation donut chart
- Revenue trend line chart (monthly/yearly)
- Geographic customer distribution map
- KPI cards with target vs actual
- Cohort analysis matrix
- Top customers bar chart

## Files

- `customer_analytics.pbix`: Main Power BI report file
- `data_model.md`: Data model documentation
- `dax_measures.md`: DAX calculations reference

## DAX Measures Used

```dax
-- Customer Lifetime Value
CLV = 
CALCULATE(
    SUMX(
        Orders,
        Orders[Quantity] * Orders[UnitPrice]
    )
)

-- Monthly Growth Rate
Monthly Growth % = 
DIVIDE(
    [Current Month Revenue] - [Previous Month Revenue],
    [Previous Month Revenue],
    0
) * 100

-- Churn Rate
Churn Rate = 
DIVIDE(
    [Churned Customers],
    [Total Customers at Start],
    0
)
```

## Skills Demonstrated

### Power BI
- Data modeling with star schema
- DAX calculations and measures
- Row-level security (RLS)
- Drill-through and cross-filtering
- Custom visuals and themes
- Power Query data transformation

### Business Intelligence
- KPI tracking and benchmarking
- Customer segmentation (RFM)
- Trend and cohort analysis
- Executive summary reporting

## Tools Used
- Microsoft Power BI Desktop
- Power Query (M language)
- DAX Studio for optimization
- SQL Server as data source
