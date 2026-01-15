1. For each order, find the value of the previous order placed by the same customer.

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    TotalAmount,
    LAG(TotalAmount) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS PreviousOrderAmount
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY CustomerID, OrderDate;


2. Create a ranking of orders based on TotalAmount, including ties, using DENSE_RANK.

SELECT
    OrderID,
    CustomerID,
    TotalAmount,
    DENSE_RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM mystic-pagoda-480217-d2.Shop_Online.Orders;


3. For each customer, assign a unique number to each order, sorted by date. Identify the first order of each customer.

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    ROW_NUMBER() OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS OrderNumber,
    CASE
        WHEN ROW_NUMBER() OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate
        ) = 1 THEN 'First Order'
        ELSE 'Subsequent Order'
    END AS OrderType
FROM mystic-pagoda-480217-d2.Shop_Online.Orders;


4. Find the date of the next order for each customer’s order.

SELECT
    CustomerID,
    OrderID,
    OrderDate,
    LEAD(OrderDate) OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate
    ) AS NextOrderDate
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
ORDER BY CustomerID, OrderDate;


5. Replace missing values in the ShippedDate column with today’s date.

SELECT
    OrderID,
    CustomerID,
    OrderDate,
    COALESCE(ShippedDate, CURRENT_DATE()) AS ShippedDate
FROM mystic-pagoda-480217-d2.Shop_Online.Orders;


6. For each order, show its TotalAmount, the average order value per customer, and add a column Above_Average = YES / NO.
   Extra: find minimum and maximum order values.

SELECT
    CustomerID,
    OrderID,
    TotalAmount,
    AVG(TotalAmount) OVER (
        PARTITION BY CustomerID
    ) AS AvgCustomerAmount,
    MIN(TotalAmount) OVER (
        PARTITION BY CustomerID
    ) AS MinCustomerAmount,
    MAX(TotalAmount) OVER (
        PARTITION BY CustomerID
    ) AS MaxCustomerAmount,
    CASE
        WHEN TotalAmount > AVG(TotalAmount) OVER (PARTITION BY CustomerID)
            THEN 'YES'
        ELSE 'NO'
    END AS Above_Average
FROM mystic-pagoda-480217-d2.Shop_Online.Orders;


7. Find the largest difference between consecutive orders for the same customer.

SELECT
    CustomerID,
    MAX(ABS(
        TotalAmount -
        LAG(TotalAmount) OVER (
            PARTITION BY CustomerID
            ORDER BY OrderDate
        )
    )) AS MaxOrderDifference
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
GROUP BY CustomerID;


8. Categorize customers based on total order value:
Premium: more than 5000
Standard: between 2000 and 5000
New: less than 2000

WITH CustomerTotals AS (
    SELECT
        CustomerID,
        SUM(TotalAmount) AS TotalSpent
    FROM mystic-pagoda-480217-d2.Shop_Online.Orders
    GROUP BY CustomerID
)
SELECT
    CASE
        WHEN TotalSpent > 5000 THEN 'Premium'
        WHEN TotalSpent BETWEEN 2000 AND 5000 THEN 'Standard'
        ELSE 'New'
    END AS CustomerCategory,
    COUNT(*) AS CustomerCount
FROM CustomerTotals
GROUP BY CustomerCategory;


9. Order Size Categories (CASE Logic).

Label orders as:
Very Large: > 400
Medium: 200–400
Small: < 200
Show:
number of orders
number of unique customers in each group

SELECT
    CASE
        WHEN TotalAmount > 400 THEN 'Very Large'
        WHEN TotalAmount BETWEEN 200 AND 400 THEN 'Medium'
        ELSE 'Small'
    END AS OrderCategory,
    COUNT(*) AS OrderCount,
    COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM mystic-pagoda-480217-d2.Shop_Online.Orders
GROUP BY OrderCategory;


10. Customer Regional Category.
Categorize customers by country:
North America: USA, Canada
Europe: Germany, UK
Other: remaining countries

SELECT
    CustomerID,
    Country,
    CASE
        WHEN Country IN ('USA', 'Canada') THEN 'North America'
        WHEN Country IN ('Germany', 'UK') THEN 'Europe'
        ELSE 'Other'
    END AS RegionCategory
FROM mystic-pagoda-480217-d2.Shop_Online.Customers;






