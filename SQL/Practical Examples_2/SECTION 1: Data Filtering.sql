1. Get customers (FirstName, LastName, Country) who live in the USA and have an email assigned.

SELECT FirstName, LastName, Country, Email,
FROM Customers
WHERE Country = 'USA'
  AND Email IS NOT NULL;

2. Find products that are NOT in category “Electronics” or “Furniture”.

SELECT ProductName, Category
FROM Products
WHERE Category NOT IN ('Electronics', 'Furniture');

3. Show orders that:
- were placed after January 1st, 2023 and have TotalAmount < 100
- OR do not have a shipping date

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE (OrderDate > '2023-01-01' AND TotalAmount < 100)
   OR ShippedDate IS NULL;

4. Get customers (FirstName, LastName, Email) from Australia who do NOT have an email.

SELECT FirstName, LastName, Email
FROM Customers
WHERE Country = 'Australia'
  AND Email IS NULL;

5. Get payments made using a method other than PayPal.

SELECT *
FROM Payments
WHERE PaymentMethod <> 'PayPal';

