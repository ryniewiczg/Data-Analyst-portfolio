📊 Real Estate Analysis – Excel Project

A complete Excel-based analysis of residential property data, focusing on pricing patterns, distribution, outliers, district-level variation, and property characteristics.

🧩 Project Overview
This project provides statistical and visual analysis of a real estate dataset stored in the CLEAN DATA worksheet (Table1).  
Objectives:
1. Price differences across property characteristics  
2. Impact of garage, condition, and type on price  
3. Price distribution and dispersion  
4. Outlier detection (1.5 × IQR rule)  
5. District-level price-per-sqm patterns  
6. Summary statistics

📁 Dataset Structure (Table1)
Key Columns:
- Total_Price_PLN  
- Has_Garage  
- Type  
- Condition  
- Monthly_Utilities_PLN  
- Location  
- Price_per_sqm  

🚀 Part 1 – General Analysis

📌 1. Garage Impact on Price
=AVERAGEIF(Table1[Has_Garage], TRUE, Table1[Total_Price_PLN])
=AVERAGEIF(Table1[Has_Garage], FALSE, Table1[Total_Price_PLN])

📌 2. Average Price by Property Type
=AVERAGEIF(Table1[Type], "Apartment", Table1[Total_Price_PLN])
=AVERAGEIF(Table1[Type], "House", Table1[Total_Price_PLN])
=AVERAGEIF(Table1[Type], "Studio", Table1[Total_Price_PLN])

📌 3. Most Frequent Property Condition
=COUNTIF(Table1[Condition], "New")
=COUNTIF(Table1[Condition], "Good")
=COUNTIF(Table1[Condition], "Needs Renovation")

📌 4. Average Maintenance Cost
Overall:
=AVERAGE(Table1[Monthly_Utilities_PLN])
By Type:
=AVERAGEIF(Table1[Type], "Apartment", Table1[Monthly_Utilities_PLN])
=AVERAGEIF(Table1[Type], "House", Table1[Monthly_Utilities_PLN])
=AVERAGEIF(Table1[Type], "Studio", Table1[Monthly_Utilities_PLN])

🔍 Part 2 – Group Comparison
=AVERAGEIF(Table1[Type], "<Type>", Table1[Total_Price_PLN])

📉 Price Distribution – Total_Price_PLN

Range:
=MAX(Table1[Total_Price_PLN]) - MIN(Table1[Total_Price_PLN])

Standard Deviation:
=STDEV.P(Table1[Total_Price_PLN])

Quartiles & IQR:
Q1 = QUARTILE.INC(Table1[Total_Price_PLN], 1)
Q3 = QUARTILE.INC(Table1[Total_Price_PLN], 3)
IQR = Q3 - Q1

Outliers:
Lower = Q1 - 1.5*IQR
Upper = Q3 + 1.5*IQR

📈 Histogram
Select Table1[Total_Price_PLN] → Insert → Statistical Chart → Histogram

📊 Bar Chart – Property Type
=COUNTIF(Table1[Type], "Apartment")
=COUNTIF(Table1[Type], "House")
=COUNTIF(Table1[Type], "Studio")

🏙️ District-Level Price per m²
=AVERAGEIF(Table1[Location], "A", Table1[Price_per_sqm])
=MEDIAN(IF(Table1[Location]="A", Table1[Price_per_sqm]))
=MODE.SNGL(IF(Table1[Location]="A", Table1[Price_per_sqm]))
(Repeat for B, C, D)

📐 Statistical Measures Used
Mean, Median, Mode, Min, Max, Range, Standard Deviation, Variance, Quartiles, IQR, Outliers.

🛠️ Tools & Technologies
- Microsoft Excel  
- Statistical functions  
- Visualizations (histogram, bar chart)  
- Excel Tables  

🧠 Summary
This project reveals:
- High price dispersion  
- Differences between property types  
- Variation in maintenance costs  
- District-level price differences  
- Presence of outliers  
All analysis was performed in Excel.
