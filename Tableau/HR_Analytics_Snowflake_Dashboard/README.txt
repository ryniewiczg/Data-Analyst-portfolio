# HR Analytics Dashboard (Snowflake + Tableau)

This project demonstrates an end-to-end analytics workflow using Snowflake as the data warehouse and Tableau for data visualization.

The goal of the project was to simulate a real-world analytics pipeline: ingesting raw data, modeling it in a warehouse, preparing analytical views, and building an interactive dashboard for business insights.

## Project Overview

The project analyzes HR operational data including employee performance, transactions, profit, and departmental activity.

The final Tableau dashboard allows users to explore:

- HR transaction trends over time
- Profit contribution by job role
- Department-level performance
- Top performing employees
- Key business KPIs (Revenue, Profit, Transactions)

Users can dynamically filter the dashboard by department to analyze performance across different teams.

## Data Warehouse (Snowflake)

The data pipeline was built in Snowflake to simulate a modern analytics architecture.

Key steps included:

- Creating database and schema
- Ingesting CSV datasets into Snowflake tables
- Designing a **star schema** for analytics
- Creating fact and dimension tables
- Validating data with SQL queries
- Building analytical views optimized for BI tools

### Data Model

The warehouse follows a simplified **star schema**:

Fact tables:
- HR Transactions
- Revenue / Profit metrics

Dimension tables:
- Employees
- Departments
- Job Roles
- Date

This structure allows efficient analytical queries and dashboard performance.

## Tableau Dashboard

The final dashboard was built in Tableau using the Snowflake analytical views.

Key features:

- KPI cards for Revenue, Profit, and Transactions
- HR transaction trend analysis
- Profit distribution by job role
- Department performance comparison
- Top employees by profit
- Interactive department filtering
- Highlighted department performance in trend charts

## Technologies Used

- Snowflake
- SQL
- Tableau
- Data Modeling (Star Schema)
- CSV Data Ingestion


## Key Skills Demonstrated

- Data warehouse design
- SQL data modeling
- Star schema implementation
- Analytical view creation
- BI dashboard development
- Interactive data visualization

