Shopnest Sales Analytics Dashboard (MySQL + Tableau)

An end-to-end analytics project combining MySQL for data preparation and Tableau for interactive visualization.

The project analyzes e-commerce data from the fictional Shopnest platform to explore sales performance, customer profitability, and product trends.


Project Overview

The goal of this project was to simulate a real-world analytics workflow, starting from raw transactional data stored in a relational database and ending with a business intelligence dashboard.

The analysis focuses on:
- sales performance across product categories
- customer profitability and segmentation
- impact of discounts on profit margins
- geographic distribution of sales
- sales trends over time

The final Tableau dashboard enables interactive exploration of these metrics through filters and dynamic visualizations.


Data Preparation (MySQL)
The data preparation layer was implemented using MySQL, where raw CSV datasets were imported and transformed before visualization.

Key preparation steps included:
- creating a MySQL database and importing raw data
- cleaning and validating data fields
- aggregating sales and profit metrics
- preparing category-level and customer-level summaries
- generating calculated fields used in the Tableau dashboard


Tableau Dashboard
The final dashboard provides a high-level overview of business performance together with detailed analytical views.

KPI Indicators
- Total Customers
- Total Products
- Total Profit
- Average Customer Value

Visualizations
- Category sales heatmap
- Profit distribution by customer tier
- Sales distribution by plan type
- Monthly sales trend analysis
- Geographic sales distribution (map)
- Top customers by profit
- Profit vs discount relationship (scatter plot)

Interactive Features
The dashboard includes several interactive elements to support data exploration:
- global filters for Customer Tier, Plan Type, and Product Category
- cross-chart filtering and highlighting
- dynamic KPI overview linked with detailed charts


Key Insights
- Sales performance varies significantly across product categories.
- Certain customer tiers generate a disproportionate share of total profit.
- Higher discounts often correlate with reduced profit margins.
- Geographic sales distribution reveals areas with stronger market performance.


Tools & Technologies
- MySQL
- SQL
- Tableau
- Data cleaning and validation
- Data aggregation
- Interactive data visualization


