#Task 3.1
Display products from the Products table, sorted by price in descending order.

SELECT ProductName, Price
FROM Products
ORDER BY Price DESC;

#Task 3.2
Retrieve customer data (FirstName, LastName, Country) from the Customers table, sorted alphabetically by country (Country).

SELECT FirstName, LastName, Country
FROM Customers
ORDER BY Country ASC;

#Task 3.3
Display all orders (OrderID, OrderDate, TotalAmount) from the Orders table, sorted by order date (OrderDate) in ascending order.

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
ORDER BY OrderDate ASC;

