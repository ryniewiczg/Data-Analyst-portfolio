# Retail Sales Analysis – Sales, Profit & Regional Insights Dashboard

A Power BI dashboard analyzing retail sales performance, profitability, customer behavior, and regional trends.

---

## Project Overview
The **Retail Sales Analysis** dashboard provides a clear, interactive view of sales, profit, and product performance across multiple regions and categories.  
It is based on the *Superstore* dataset (`superstore.xlsx`) and demonstrates KPI creation, data modeling, and storytelling with data.

The report includes three main analytics areas:

1. **Sales & Profit Overview** – key KPIs and time-based trends  
2. **Regional Breakdown** – geographic distribution of sales  
3. **Product Performance** – top-selling products and categories  

---

## Dashboard Screenshots

### 1. Dashboard Overview  
![Dashboard Overview](visuals/Dashboard_Page1.png)

---

## Dashboard Features
KPI cards (Sales, Profit, Orders, Avg Profit)  
Monthly sales trend with time intelligence  
Interactive map: Sales by Region  
Top 10 products analysis  
Category & sub-category insights  
Dynamic slicers for fast filtering  
Clean layout using Power BI best practices  

---

## Key Business Insights
- The **West region** achieves the highest sales and profit.  
- The **Technology** category drives the strongest profit growth.  
- Sales show seasonal peaks in **Q4 months**.  
- The top 10 products generate **40–50%** of total revenue.  

---

## Tools & Technologies
- **Power BI Desktop**  
- **Power Query** for data cleaning  
- **DAX** for KPI calculations:  
  - `Profit Margin = Profit / Sales`  
  - `Avg Profit = AVERAGE(Profit)`  
  - `Total Sales = SUM(Sales)`  
  - `Total Profit = SUM(Profit)`  
- Data modeling and relationship management  
- Interactive visualization techniques  

---

## Repository Structure
- `Retail_sales_analysis.xlsx` – raw dataset  
- `Retail_sales.PowerBI.pbix` – Power BI report  
- `/visuals` – dashboard screenshot
- `README.md` – project documentation  

---

## Next Steps
- Publish dashboard to **Power BI Service**  
- Connect to a **SQL** or **API** live data source  
- Add **drill-through**, **bookmarks**, and **scenario analysis**  

---

## Author
Dashboard developed by **Grzegorz Ryniewicz**  
LinkedIn: https://www.linkedin.com/in/grzegorz-ryniewicz-922130125/  
GitHub: https://github.com/rynniewiczg

