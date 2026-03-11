Electronics Shop -- Sales Performance Dashboard (Power BI)

The retailer required a centralized dashboard to monitor overall sales performance and identify key growth drivers.

Key analytical requirements included:
- Centralized view of total sales performance
- Regional comparison of sales and customer activity
- Rolling 30-day performance monitoring
- Customer growth tracking
- Analysis of warranty length impact on sales
- Monitoring VIP customer purchasing behavior

Dashboard Highlights
KPI Overview:
- Total Customers (to date)
- Average Transaction Value (Last 30 Days)
- Sales Last 30 Days
- Total Sales Last Year (Year-over-Year comparison)

Sales Trends:
- Monthly revenue trends
- Two-year sales performance view
- Seasonal performance patterns

Regional Performance
- Sales by region (East, North, South, West)
- Customer distribution by region
- Average sales and transaction volume

Warranty Analysis
- Comparison of short vs long warranty sales
- Impact of warranty length on revenue

VIP Customer Tracking
- Monthly VIP customer sales
- VIP performance trend monitoring

Data Model
The report uses a star schema data model to optimize performance and analytical flexibility.

Fact Table
Fact_Sales
- TransactionID
- OrderDate
- CustomerID
- Region
- ProductCategory
- WarrantyType
- SalesAmount

Dimension Tables
- Dim_Date
- Dim_Customer
- Dim_Region
- Dim_Product
- Dim_Warranty

Relationships follow a single-direction filter flow (Dimension to Fact).

Key DAX Measures
- Total Sales
Total Sales = SUM(Fact_Sales[SalesAmount])

- Total Transactions
Total Transactions = COUNT(Fact_Sales[TransactionID])

- Customers To Date
Customers To Date = DISTINCTCOUNT(Fact_Sales[CustomerID])

- Sales Last 30 Days
Sales Last 30 Days =
CALCULATE(
    [Total Sales],
    DATESINPERIOD(
        Dim_Date[Date],
        MAX(Dim_Date[Date]),
        -30,
        DAY
    )
)

- Average Sales Last 30 Days
Avg Sales Last 30 Days =
CALCULATE(
    AVERAGE(Fact_Sales[SalesAmount]),
    DATESINPERIOD(
        Dim_Date[Date],
        MAX(Dim_Date[Date]),
        -30,
        DAY
    )
)

- Total Sales Last Year (YoY)
Total Sales LY =
CALCULATE(
    [Total Sales],
    SAMEPERIODLASTYEAR(Dim_Date[Date])
)

Dataset
The original dataset is not included in this repository due to size and confidentiality considerations.



Tools & Technologies
- Power BI Desktop
- DAX
- Power Query
- Star Schema Data Modeling
- Time Intelligence Functions
- KPI Dashboard Design

Technical Highlights
- Star schema data modeling
- Rolling 30-day performance metrics
- Year-over-year sales analysis
- Regional sales benchmarking
- Warranty impact analysis
- VIP customer segmentation
- Executive dashboard layout


