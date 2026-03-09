Shopnest Sales Analytics Dashboard (MySQL + Tableau)

This project demonstrates an end-to-end analytics workflow using MySQL as the relational database and Tableau for interactive data visualization.

The goal of the project was to simulate a real-world analytics process: importing raw data, preparing it in SQL, creating analytical metrics, and building a business dashboard that provides insights into sales performance and customer behavior.

Project Overview

The project analyzes Shopnest e-commerce data including:

Sales transactions

Customers

Products

Discounts

Profit performance

The final Tableau dashboard enables users to explore:

Sales performance by product category

Profit distribution across customer tiers

Sales trends over time

Sales by subscription plan type

Geographic sales distribution

Customer profitability

Relationship between discount and profit

Users can dynamically filter the dashboard by:

Customer Tier

Plan Type

Product Category

Database (MySQL)

The data preparation layer was built using MySQL, where the raw data was loaded and prepared for analysis.

Key steps included:

Creating a MySQL database

Importing CSV datasets into MySQL tables

Cleaning and validating data using SQL queries

Creating calculated metrics for analysis

Preparing tables for BI visualization

Example operations performed in SQL:

Aggregating sales metrics

Calculating profit values

Preparing category-level summaries

Creating fields used in Tableau dashboards

Data Preparation Steps (MySQL)

The following steps were performed during the data preparation process:

1. Database creation

A new MySQL database was created to store the e-commerce dataset.

2. Importing CSV data

Raw CSV files containing sales, product, and customer information were imported into MySQL tables.

3. Data validation

Basic validation queries were executed to ensure:

No missing key values

Correct data types

Consistent category labels

4. Data aggregation

SQL queries were used to compute:

Total sales

Profit metrics

Category level summaries

Customer-level profitability

5. Preparing data for Tableau

The cleaned dataset was connected directly to Tableau for dashboard development.

Tableau Dashboard

The final dashboard was built in Tableau using the processed MySQL data.

The dashboard provides a high-level overview of business performance together with interactive analytical views.

Key dashboard components

KPI Indicators

Total Customers

Total Products

Total Profit

Average Customer Value

Visualizations

Category Sales heatmap

Profit distribution by Customer Tier

Sales distribution by Plan Type

Monthly Sales Trend

Sales by Geographic Location (Map)

Top Customers by Profit

Profit vs Discount analysis (scatter plot)

Sales by Media Type (stacked area chart)

Interactive Features

The dashboard includes interactive functionality to improve data exploration:

Global filters for Customer Tier, Plan Type, and Category

Hover highlight interactions between charts

Dynamic filtering across multiple visualizations

KPI overview with supporting analytical charts

Technologies Used

MySQL

SQL

Tableau

Data Cleaning

Data Aggregation

Data Visualization

Key Skills Demonstrated

SQL data preparation

Data cleaning and validation

Analytical metric creation

Business dashboard design

Interactive data visualization

Data storytelling with BI tools