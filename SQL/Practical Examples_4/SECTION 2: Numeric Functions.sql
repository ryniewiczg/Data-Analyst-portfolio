1. Round product prices.
Round the Price column to 1 decimal place.

SELECT
  Price,
  ROUND(Price, 1) AS Rounded_Price
FROM `project.dataset.Products`;


2. Calculate absolute difference in values.
Calculate the absolute difference between TotalAmount and 250.

SELECT
  TotalAmount,
  ABS(TotalAmount - 250) AS Absolute_Difference
FROM `project.dataset.Orders`;


3. Raise order values to the power of 2.
Use the POWER function on TotalAmount.

SELECT
  TotalAmount,
  POWER(TotalAmount, 2) AS TotalAmount_Squared
FROM `project.dataset.Orders`;


4. Calculate square root of order values.
Apply the SQRT function to TotalAmount.

SELECT
  TotalAmount,
  SQRT(TotalAmount) AS TotalAmount_SquareRoot
FROM `project.dataset.Orders`;
