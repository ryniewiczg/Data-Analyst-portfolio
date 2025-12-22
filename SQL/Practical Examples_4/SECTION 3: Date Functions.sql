1. Calculate the age of each order in days.
Calculate the difference between OrderDate and the current date.

SELECT
  OrderID,
  OrderDate,
  DATE_DIFF(CURRENT_DATE(), OrderDate, DAY) AS Order_Age_Days
FROM `project.dataset.Orders`;


2. Add 30 days to the order date.
Use DATE_ADD to add 30 days to OrderDate.

SELECT
  OrderID,
  OrderDate,
  DATE_ADD(OrderDate, INTERVAL 30 DAY) AS OrderDate_Plus_30_Days
FROM `project.dataset.Orders`;


3. Extract month and year from order dates.
Use EXTRACT to get MONTH and YEAR.

SELECT
  OrderID,
  OrderDate,
  EXTRACT(MONTH FROM OrderDate) AS Order_Month,
  EXTRACT(YEAR FROM OrderDate) AS Order_Year
FROM `project.dataset.Orders`;
