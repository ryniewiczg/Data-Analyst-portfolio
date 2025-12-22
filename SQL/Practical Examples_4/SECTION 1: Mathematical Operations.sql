1. Add transportation cost to each order.
Add a fixed cost of 15 to TotalAmount and display it as Price_with_Shipping.

SELECT
  OrderID,
  TotalAmount,
  TotalAmount + 15 AS Price_with_Shipping
FROM `project.dataset.Orders`;


2. Calculate unit value of each order
Divide TotalAmount by Quantity for each order.

SELECT
  OrderID,
  TotalAmount,
  Quantity,
  SAFE_DIVIDE(TotalAmount, Quantity) AS Unit_Price
FROM `project.dataset.Orders`;


3. Calculate prices after a 10% discount
Multiply Price by 0.9 and display it as Discounted_Price
(Products table).

SELECT
  Price,
  Price * 0.9 AS Discounted_Price
FROM `project.dataset.Products`;
