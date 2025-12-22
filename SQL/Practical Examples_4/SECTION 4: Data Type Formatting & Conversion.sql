1. Change the order date format.
Format the date as DD-MM-YYYY.

SELECT
  OrderID,
  FORMAT_DATE('%d-%m-%Y', OrderDate) AS Formatted_OrderDate
FROM `project.dataset.Orders`;

2. Convert number to text.
Convert TotalAmount to a string using CAST.

SELECT
  TotalAmount,
  CAST(TotalAmount AS STRING) AS TotalAmount_Text
FROM `project.dataset.Orders`;


3. Safe conversion from text to number.
Safely convert text to a numeric value using SAFE_CAST.

SELECT
  TotalAmount,
  SAFE_CAST(TotalAmount AS FLOAT64) AS TotalAmount_Number
FROM `project.dataset.Orders`;
