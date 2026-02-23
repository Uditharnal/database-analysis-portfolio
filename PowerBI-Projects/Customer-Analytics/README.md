# Customer Analytics Dashboard - Power BI

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
1. **Customer Demographics**: Age, location, and segment distribution
2. **Purchase Behavior**: Frequency, recency, and monetary analysis
3. **Trend Analysis**: Time-series analysis of customer activity
4. **Segmentation**: Customer groups based on RFM analysis
5. **Geographic Distribution**: Map visualizations

## Technical Implementation

### Data Sources
- SQL Server database
- Excel files
- CSV data imports

### DAX Calculations
```
-- Customer Lifetime Value
CLV = 
SUMX(
    FILTER(Orders, Orders[CustomerID] = EARLIER(Customers[CustomerID])),
    Orders[TotalAmount]
)

-- Churn Rate
Churn Rate = 
DIVIDE(
    CALCULATE(COUNTROWS(Customers), Customers[Status] = "Churned"),
    COUNTROWS(Customers)
)

-- Month-over-Month Growth
MoM Growth = 
VAR CurrentMonth = SUM(Orders[TotalAmount])
VAR PreviousMonth = CALCULATE(
    SUM(Orders[TotalAmount]),
    DATEADD(Orders[OrderDate], -1, MONTH)
)
RETURN DIVIDE(CurrentMonth - PreviousMonth, PreviousMonth)
```

## Skills Showcased
- Data modeling and relationships
- Advanced DAX measures
- Custom visualizations
- Interactive filtering
- Report design best practices
- Performance optimization

## Files
- `customer_analytics.pbix`: Power BI report file (to be uploaded)
- `data_model.png`: Screenshot of data model
- `dashboard_preview.png`: Dashboard screenshot

**Note**: Power BI files (.pbix) will be uploaded separately. Preview images and documentation are included.