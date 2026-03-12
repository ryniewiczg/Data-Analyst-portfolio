Insigh BI – Fashion Brand Analytics Dashboard (Azure SQL + Power BI)

A Power BI dashboard analyzing fashion retail brand performance, focusing on pricing strategies, discount patterns, product variety, and profitability.

The project demonstrates an analytics workflow where raw retail data was first cleaned and structured in **Azure SQL**, and then connected to **Power BI** to build an interactive business intelligence dashboard.


Project Overview

The Insigh BI dashboard analyzes fashion brand performance within a retail dataset, highlighting differences in pricing strategies, discount levels, and product assortment across brands.

The analysis focuses on identifying how pricing, discounts, and product variety influence brand positioning and profitability.

The report includes several analytical areas:

1. Discount Strategy Analysis – identifying brands with the highest average discounts  
2. Profit Performance – comparing brands with the highest and lowest profit margins  
3. Product Variety Analysis – evaluating brands with the largest product assortment  
4. Pricing Strategy – analyzing brands with the highest average sales price  


Data Preparation (Azure SQL)

Before building the dashboard, the dataset was processed in Azure SQL.

Key preparation steps included:
- importing raw retail product data into Azure SQL tables  
- cleaning and validating dataset fields  
- standardizing brand names and product categories  
- creating aggregated metrics used for analysis  
- preparing SQL queries used as a data source for Power BI  

This approach simulates a real-world analytics workflow where SQL is used for data preparation before visualization in Power BI.


Dashboard Features
- Top 5 brands by average discount percentage
- Top 5 brands by highest average profit margin
- Bottom 5 brands by lowest profit margin
- Top brands by number of product varieties
- Brands with the highest average sales price
- Interactive brand filtering
- Visual comparison of brand pricing and discount strategies


Key Business Insights
- Some brands rely heavily on high discount strategies to increase sales.
- Brands with the largest product assortment dominate overall product availability.
- Premium brands maintain higher sales prices with lower discount levels.
- Some brands show lower profit margins despite high pricing, indicating potential pricing inefficiencies.


Tools & Technologies
- Azure SQL
- SQL
- Power BI Desktop
- DAX
- Data cleaning and transformation
- Business intelligence dashboard design
