#Task 7: Count how many orders each customer placed
SELECT 
  CustomerID,
  COUNT(*) AS order_count
FROM `project.dataset.Orders`
GROUP BY CustomerID
ORDER BY order_count DESC;
