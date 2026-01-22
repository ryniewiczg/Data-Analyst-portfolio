# Data Analyst Portfolio

Welcome to my Data Analyst Portfolio — a collection of projects showcasing my skills in **Power BI, Tableau, SQL, Python, data modeling, data visualization, and analytical storytelling**.  
Each project includes datasets, visuals, documentation, and the final analytical output.

---

## Tools & Technologies

![Power BI](https://img.shields.io/badge/PowerBI-Visualization-F2C811?style=flat&logo=powerbi&logoColor=black)
![Tableau](https://img.shields.io/badge/Tableau-Analytics-E97627?style=flat&logo=tableau&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Queries-4479A1?style=flat&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-Data%20Analysis-3776AB?style=flat&logo=python&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Reporting-217346?style=flat&logo=microsoft-excel&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?style=flat&logo=github&logoColor=white)
![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-0A66C2?style=flat&logo=linkedin&logoColor=white)

---


## Microsoft PowerBI Projects — Overview

### 1️. **MarketMindz – Market Research Dashboard**  
Interactive Power BI dashboard analyzing customer trends, product performance, and market patterns.  
Includes datasets, visuals, full documentation, and the final .pbix report.  

*Project folder:* `PowerBI/MarketMindz_Market Research`

---

### 2️. **Retail Sales Analysis**  
Dashboard exploring retail sales performance, profitability, and regional trends based on `superstore.xlsx`.  
Provides insights into product categories, customer segments, and organizational KPIs.  

*Project folder:* `PowerBI/Retail_Sales-Analysis_PowerBI`

---

### 3. Kraken Koffee – 2023 Half-Time Sales Review Dashboard

A Power BI dashboard analyzing sales performance across Kraken Koffee’s new Florida region, including KPIs, product trends, hourly revenue behavior, and a 2023 sales forecast.

*Project folder:* `PowerBI/KrakenKoffee_Infographic`

---

### 4. Pharma Asset & Spend Analysis – Multi-Country Dashboard (BE, UK, US)

A Power BI dashboard developed for a pharmaceutical client to analyze asset management, contract and ad-hoc spend, and cost structure across three markets:
Belgium, United Kingdom, and the United States.
The dashboard enables year-over-year comparisons, asset triage analysis,
monitoring of active and inactive assets, and identification of top vendors
and high-cost areas to support strategic and operational decision-making.

*Project folder:* `PowerBI/Pharma_Asset_Spend_Analysis`

---

## Microsoft Excel Projects — Overview

### 1️. Retail Sales Analysis

Excel-based analytical model exploring retail sales, KPIs, and product insights using structured spreadsheets.

*Project folder:* `Excel/Retail_Sales-Analysis`

---

### 2. Bike Sales Dashboard

Excel-based interactive dashboard analyzing customer demographics, income, commute distance, and bike purchase behavior. The project showcases data cleaning, pivot table analysis, and visualization skills.

*Project folder:* `Excel/Bike_Sales_Dashboard`

---



## Statistics Projects — Overview
### 1. Real Estate Market Analysis - Central and dispersion metrics

Statistical analysis of real estate data focused on price distribution, quartiles, IQR-based outlier detection, district-level price-per-sqm comparison, and group analysis across property types. Includes measures such as mean, median, mode, min, max, range, standard deviation, and full descriptive analytics.

*Project folder:* `Statistics/Central and dispersion metrics/Real estate`

---

### 2. Employee Data Analysis – HR metrics, correlations, and regression

Statistical analysis of employee data focused on salary distribution, experience levels, job satisfaction scores, and department-level comparisons. Includes measures such as mean, median, mode, standard deviation, variance, correlation coefficients, and a linear regression model evaluating the relationship between experience and satisfaction. The project also examines salary dispersion across departments and provides visual insights using histogram and scatter plot charts.

*Project folder:* `Statistics/Employee data analysis`






---


## SQL Projects — Overview

### 1. SQL Practice Exercises — BigQuery Sandbox

A collection of SQL exercises completed as part of my Data Analytics learning journey, using Google BigQuery Sandbox.  
This repository focuses on SQL fundamentals and data preparation, with particular emphasis on string operations such as `CONCAT, SUBSTRING, LENGTH, TRIM, UPPER, LOWER, LEFT, RIGHT, and REPLACE.`

Additionally, the exercises cover:
- data filtering using WHERE,
- handling NULL values,
- applying logical conditions,
- working with column aliases,
- sorting query results with ORDER BY.
  
Through hands-on practice with relational datasets, I developed a solid foundation in SQL and learned how to clean, transform, and prepare structured data for analysis.

*Project folder:* `SQL/SQL Basics & Practical_Examples_1-3`

---

### 2. SQL Numeric & Date Functions — BigQuery Sandbox

This section focuses on numeric and date-related SQL functions commonly used in data analytics.
The exercises demonstrate how to perform calculations, handle numeric transformations, and work with dates and time-based data in Google BigQuery.

Covered topics include:
- mathematical operations on numeric columns
  `(ABS, POWER, SQRT, CEIL, FLOOR, RAND)`
- rounding and absolute values
  `(ROUND, CEIL, FLOOR)`
- Extracting date components
  `(EXTRACT – year and month)`
- Formatting and data type conversions
  `(CAST, SAFE_CAST, FORMAT_DATE)`
  
*Project folder:* `SQL/Practical_Examples_4`

---

### 3. SQL JOIN & UNION Operations — BigQuery Sandbox

This section focuses on combining data from multiple tables using `JOIN` and `UNION` operations in Google BigQuery.
The exercises are designed to reflect real-world data analytics and data warehousing scenarios.

Covered topics include:

### JOIN operations:
- INNER JOIN and LEFT JOIN between fact and dimension tables
- Combining transactional and master data
- Enriching fact tables with descriptive attributes
- Working with warehouse, inventory, product, customer, and weather data

### UNION operations:
- Merging datasets from different sources
- Creating unified lists (statuses, dates, postal codes)
- Conditional UNION logic based on date thresholds
- Combining historical fact tables across multiple years
- Understanding differences between `UNION` and `UNION ALL`

All examples follow BigQuery SQL standards and use clear naming conventions
to ensure readability and maintainability.

Project folder:
`SQL/Practical_Examples_5`

---

### 4. SQL Aggregation & Grouping — BigQuery Sandbox

This section focuses on aggregating and summarizing data using core SQL aggregation techniques in Google BigQuery.
The exercises are designed to strengthen analytical thinking and reflect real-world reporting and business analytics use cases.

Covered topics include:

### Aggregation & Grouping:
- Using aggregate functions: COUNT, SUM, AVG, MIN, MAX
- Grouping data with GROUP BY (single and multiple columns)
- Filtering aggregated results using the HAVING clause
- Working with distinct values using COUNT(DISTINCT)
- Performing time-based aggregations with DATE_TRUNC
- Analyzing customer, product, warehouse, and discount-level metrics
- Combining aggregation logic with JOINs across multiple tables

All examples follow BigQuery SQL standards and focus on clear, readable, and scalable query design.

*Project folder:* `SQL/Practical_Examples_6`

---

### 5. SQL Subqueries & CTEs — Advanced BigQuery Exercises

This section focuses on advanced SQL querying techniques, including subqueries, correlated subqueries, and Common Table Expressions (CTEs) in Google BigQuery.
The exercises are designed to simulate complex analytical scenarios and demonstrate how to structure multi-step SQL logic effectively.

Covered topics include:

### Subqueries & CTEs:
- Subqueries in SELECT, WHERE, and FROM clauses
- Correlated subqueries for row-level comparisons
- Using CTEs (WITH clause) to build readable, modular queries
- Applying business rules inside subqueries and CTEs
- Combining aggregation, filtering, and joins in layered queries
- Analyzing customer spend, discounts, inventory levels, and product performance
- Identifying top-performing products and above-average customers

All queries follow BigQuery SQL best practices, emphasizing maintainability, clarity, and real-world analytical logic.

*Project folder:* `SQL/Practical_Examples_7`

---

### 6. SQL Window Functions — BigQuery Sandbox

This section focuses on SQL window functions used for advanced analytical queries in Google BigQuery. The exercises demonstrate how to perform calculations across related rows while preserving row-level detail, which is essential for analytical reporting and trend analysis.

Covered topics include:
- Using window definitions with the `OVER()` clause
- Partitioning data using `PARTITION BY`
- Ordering rows within partitions using `ORDER BY`
- Applying conditional logic with `CASE` expressions
Row numbering and ranking:
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`

Working with sequential data using:
- `LEAD()`
- `LAG()`

- Comparing current values with previous and next rows
- Analyzing trends, changes, and rankings over time
- Identifying top-performing products, customers, and time periods

Applying window functions to sales, customer, product, and time-based datasets

*Project folder:* `SQL/Practical_Examples_8`


---


### Python Fundamentals — Google Colab Sandbox

## Upcoming Projects
More projects will be added soon, including:
- Customer segmentation dashboard  
- Sales forecasting  
- SQL data cleaning + BI visualization  
- Python exploratory data analysis  

---

## About Me
I am a **Data Analyst** skilled in data modeling, BI dashboards, KPI measurement, and deriving actionable insights from complex datasets.  
Certified in **Power BI, Tableau, SQL, and Python**.

---

## Contact
**LinkedIn:** https://www.linkedin.com/in/grzegorz-ryniewicz-922130125/  
**GitHub:** https://github.com/rynniewiczg
