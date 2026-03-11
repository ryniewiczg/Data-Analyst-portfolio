HR Analytics Dashboard (Snowflake + Tableau)

An end-to-end analytics project combining Snowflake as the data warehouse and Tableau for interactive visualization.

The project simulates a modern analytics workflow: ingesting raw HR data, modeling it in a warehouse, preparing analytical views using SQL, and building a business dashboard for performance monitoring.


Project Overview
The dashboard analyzes HR operational data including employee activity, departmental performance, and financial contribution metrics.

The analysis focuses on:
- HR transaction trends over time
- department-level performance comparison
- profit contribution by job role
- identification of top-performing employees
- monitoring key operational KPIs

The final Tableau dashboard allows users to interactively explore HR performance using department-level filters.

Data Warehouse (Snowflake)
The data pipeline was implemented in Snowflake to simulate a modern analytics architecture.

Key steps included:
- creating database and schema structures
- importing raw CSV datasets into Snowflake tables
- validating and cleaning data using SQL
- designing a star schema data model
- creating analytical views optimized for BI tools


Data Model
The warehouse follows a simplified star schema design.

Fact Tables
- HR Transactions
- Revenue / Profit Metrics

Dimension Tables
- Employees
- Departments
- Job Roles
- Date

This structure supports efficient analytical queries and improves dashboard performance.


Tableau Dashboard
The final dashboard was built in Tableau using Snowflake analytical views.


Dashboard Features
- KPI cards (Revenue, Profit, Transactions)
- HR transaction trend analysis
- Profit distribution by job role
- Department performance comparison
- Top employees by profit contribution
- Interactive department filters
- Highlighted department performance trends


Key Insights
- Some departments contribute significantly more to overall profit than others.
- Transaction activity varies across departments and job roles.
- A small number of employees generate a large share of revenue contribution.
- Trend analysis reveals fluctuations in HR activity over time.


Tools & Technologies
- Snowflake
- SQL
- Tableau
- Data Modeling (Star Schema)
- Data Warehouse Design
- BI Dashboard Development


