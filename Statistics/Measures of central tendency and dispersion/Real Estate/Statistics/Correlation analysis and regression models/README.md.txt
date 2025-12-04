# Employee Data Analysis – Statistical & Visualization Project

A complete Excel-based analysis of employee data, focusing on salary structure, work experience distribution, job satisfaction, departmental patterns, and regression-based insights.

---

## Project Overview

This project provides a full statistical and visual analysis of the dataset contained in the **Employee Raw** worksheet.

### Objectives:
- Analyze central tendency (mean, median, mode)
- Measure variation (standard deviation, variance, range)
- Examine correlations between key HR metrics
- Build and interpret a simple linear regression model
- Compare salary dispersion between IT and HR departments
- Create visualizations (histogram and scatter plot)
- Summarize findings for HR-focused interpretation

---

## Dataset Structure (Employee Raw)

Columns analyzed:
- Salary
- Experience_Years
- Education_Years
- Satisfaction_Score
- Hours_Worked_Per_Week
- Annual_Leave_Days
- Department

Dataset size: **100 employees (A2:I101)**

---

# 1. Measures of Central Tendency

a) Average annual salary  
`=AVERAGE('Employee Raw'!B2:B101)`  
**Result:** 51,027.11

b) Median years of experience  
`=MEDIAN('Employee Raw'!C2:C101)`  
**Result:** 10

c) Most frequent department (mode)  
Calculated using PivotTable  
**Result:** Finance (24 employees)

---

# 2. Measures of Dispersion

a) Standard deviation — working hours  
`=STDEV.S('Employee Raw'!F2:F101)`  
**Result:** 11.7069

b) Variance — job satisfaction  
`=VAR.S('Employee Raw'!E2:E101)`  
**Result:** 6.1389

c) Range — annual leave days  
`=MAX('Employee Raw'!G2:G101) - MIN('Employee Raw'!G2:G101)`

---

# 3. Correlation Analysis

a) Experience vs Salary  
`=CORREL('Employee Raw'!C2:C101, 'Employee Raw'!B2:B101)`  
**Result:** 0.0736

b) Working Hours vs Satisfaction  
`=CORREL('Employee Raw'!F2:F101, 'Employee Raw'!E2:E101)`  
**Result:** 0.0343

---

# 4. Regression Analysis

Model:  
**Satisfaction_Score = β0 + β1 × Experience_Years**

Slope  
`=SLOPE('Employee Raw'!E2:E101, 'Employee Raw'!C2:C101)`  
**Result:** –0.05596

Intercept  
`=INTERCEPT('Employee Raw'!E2:E101, 'Employee Raw'!C2:C101)`  
Intercept  
`=INTERCEPT('Employee Raw'!E2:E101, 'Employee Raw'!C2:C101)`  
**Result:** 6.1263

R²  
`=RSQ('Employee Raw'!E2:E101, 'Employee Raw'!C2:C101)`  
**Result:** 0.00534



---

# 5. Application of All Measures

a) Experience statistics  
- Mean: 9.93  
- Median: 10  
- Standard deviation: 3.2357  

b) Salary variance comparison  
- IT: 310,979,074.6  
- HR: 102,601,168.1  

Conclusion: **IT salaries are far more dispersed than HR salaries.**

---

# 6. Interpretation of Results

- Median is more reliable for salary analysis because it is not affected by outliers.  
- Experience shows no meaningful correlation with salary or satisfaction.  
- Regression explains almost none of the variation in satisfaction (R² ≈ 0%).  
- The IT department has significantly higher salary variance than HR.

---

# 7. Visualizations

(Place your saved images in a folder named `visuals`)

a) Histogram  
b) Scatter


# Tools & Technologies
- Microsoft Excel  
- Excel formulas (AVERAGE, MEDIAN, VAR.S, CORREL, SLOPE, INTERCEPT, RSQ)  
- PivotTables  
- Analysis ToolPak (Regression)  
- Histogram & Scatter Plot visualizations  

---

# Summary

This project provides key HR insights:
- Salary clustering in the mid-range
- Moderate variation in job satisfaction
- Weak correlations between experience, hours, and satisfaction
- Large dispersion of salaries in the IT department
- Regression model with minimal predictive power

All analysis was conducted in Excel.

---

# License
This project is for educational and analytical purposes.


