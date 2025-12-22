1. Convert Status to uppercase (Payments.)
  
SELECT
  Status,
  UPPER(Status) AS Status_Uppercase
FROM `project.dataset.Payments`;


2. Concatenate Status and PaymentMethod with a hyphen.
  
SELECT
  Status,
  PaymentMethod,
  CONCAT(Status, '-', PaymentMethod) AS Status_PaymentMethod
FROM `project.dataset.Payments`;


3. Replace values in DiscountType (Discounts).
  
SELECT
  DiscountType,
  REPLACE(
    REPLACE(DiscountType, 'Percentage', 'Prct'),
    'Fixed',
    'Fxd'
  ) AS DiscountType_Short
FROM `project.dataset.Discounts`;


4. Add 1% processing fee to payment amount.
  
SELECT
  Amount,
  Amount * 1.01 AS Amount_With_Processing_Fee
FROM `project.dataset.Payments`;


5. Display product names and prices after 10% discount.
  
SELECT
  ProductName,
  Price,
  Price * 0.9 AS Discounted_Price
FROM `project.dataset.Products`;


6. Calculate discount duration in days (Discounts).
  
SELECT
  DiscountType,
  StartDate,
  EndDate,
  DATE_DIFF(EndDate, StartDate, DAY) AS Discount_Duration_Days
FROM `project.dataset.Discounts`;


7. For each order, display the OrderID, OrderDate, order age in days, the total order value rounded to 2 decimal places, and the unit price (TotalAmount divided by Quantity).
  
SELECT
  OrderID,
  OrderDate,
  DATE_DIFF(CURRENT_DATE(), DATE(OrderDate), DAY) AS Order_Age_Days,
  ROUND(TotalAmount, 2) AS TotalAmount_Rounded,
  ROUND(SAFE_DIVIDE(TotalAmount, Quantity),2) AS Unit_Price
FROM `project.dataset.Orders`;


8. Convert Quantity to FLOAT64.
  
SELECT
  Quantity,
  CAST(Quantity AS FLOAT64) AS Quantity_Float
FROM `project.dataset.Orders`;


9. Calculate days since payment date.
SELECT
  PaymentDate,
  DATE_DIFF(CURRENT_DATE(), PaymentDate, DAY) AS Days_Since_Payment
FROM `project.dataset.Payments`;
