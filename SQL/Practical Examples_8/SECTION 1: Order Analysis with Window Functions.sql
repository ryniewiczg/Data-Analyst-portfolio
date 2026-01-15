1. Add row numbering for orders for each customer, sorted by order date.

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS OrderNumber
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY CustomerID, OrderDate;


2. Create a ranking of orders based on their value (TotalAmount), without grouping by customers.

SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY TotalAmount DESC;


3. Find the previous and next order for each customer, sorted by order date.

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    LAG(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS PreviousOrderID,
    LEAD(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS NextOrderID
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY CustomerID, OrderDate;


4. Calculate the total sum and the running total of amounts paid by customers (TotalAmount), ordered by order date (OrderDate).

SELECT
    CustomerID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER () AS TotalAmountAll,
    SUM(TotalAmount) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS RunningTotal
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY CustomerID, OrderDate;


5. Divide products into three categories in the Inventory table:
“Out of stock” if the stock level is NULL or 0
“Low stock” if the stock level is between 1 and 20
“High stock” if the stock level is above 20

SELECT
    ProductID,
    StockLevel,
    CASE
        WHEN StockLevel IS NULL OR StockLevel = 0 THEN 'Brak zapasów'
        WHEN StockLevel BETWEEN 1 AND 20 THEN 'Niskie zapasy'
        ELSE 'Duże zapasy'
    END AS InventoryCategory
FROM mystic-pagoda-480217-d2.Shop_Online.Inventory


6. Replace missing values in the OrderStatus column in the Orders table with ‘Pending’.

SELECT
    OrderID,
    CustomerID,
    OrderDate,
    CASE
        WHEN OrderStatus IS NULL THEN 'Pending'
        ELSE OrderStatus
    END AS OrderStatus
FROM mystic-pagoda-480217-d2.Shop_Online.Order
  

