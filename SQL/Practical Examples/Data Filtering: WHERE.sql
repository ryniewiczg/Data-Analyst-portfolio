#Task 2.1:
Display all orders (OrderID, OrderDate) from the Orders table that were placed after June 1, 2023.

SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate > '2023-06-01';

#Task 2.2
Find products from the Products table where the price is greater than 100.

SELECT ProductName, Price
FROM Products
WHERE Price > 100;

#Task 2.3
Retrieve customer data (FirstName, LastName) from the Customers table for customers who live in Canada.

SELECT FirstName, LastName
FROM Customers
WHERE Country = 'Canada';

#Task 2.4
Display orders from the Orders table where TotalAmount is between 100 and 200.

SELECT OrderID, TotalAmount
FROM Orders
WHERE TotalAmount BETWEEN 100 AND 200;
