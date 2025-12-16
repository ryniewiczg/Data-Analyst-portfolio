1. Get customers whose first name starts with “J”.

SELECT FirstName, LastName
FROM Customers
WHERE FirstName LIKE 'J%';

2. Get products whose name contains “Tool”.

SELECT ProductName
FROM Products
WHERE ProductName LIKE '%Tool%';

3. Find customers whose email contains “gmail”.

SELECT FirstName, LastName, Email
FROM Customers
WHERE Email LIKE '%gmail%';
 
