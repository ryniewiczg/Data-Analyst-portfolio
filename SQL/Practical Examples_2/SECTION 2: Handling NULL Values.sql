1. Get warehouses without assigned location.

SELECT WarehouseID, WarehouseName
FROM Warehouses
WHERE Location IS NULL;

2. Show orders without a shipping date.

SELECT OrderID, CustomerID, ShippedDate
FROM Orders
WHERE ShippedDate IS NULL;

