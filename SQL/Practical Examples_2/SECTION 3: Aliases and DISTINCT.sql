1. Show customers with column aliases.

SELECT
  FirstName AS "First N",
  LastName AS "Last N",
  Email AS "Email"
FROM Customers;

2. Find unique countries customers come from.

SELECT DISTINCT Country AS "Countries"
FROM Customers;

3. Show all unique customer first names.

SELECT DISTINCT FirstName
FROM Customers;

