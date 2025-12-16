1. Find warehouses that:
- are located in Pierceton OR San Francisco
- OR their name starts with “M”

SELECT WarehouseName, Location
FROM Warehouses
WHERE Location IN ('Pierceton', 'San Francisco')
   OR WarehouseName LIKE 'M%';

2. Find products that:
- belong to Electronics and cost more than 400
- OR belong to Toys and cost between 50 and 100

SELECT ProductName, Category, Price
FROM Products
WHERE (Category = 'Electronics' AND Price > 400)
   OR (Category = 'Toys' AND Price BETWEEN 50 AND 100);

