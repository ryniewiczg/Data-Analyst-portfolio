#Task 8: Calculate total sales per product
SELECT 
  p.ProductName,
  SUM(o.Quantity * o.UnitPrice) AS total_sales
FROM `project.dataset.OrderDetails` o
JOIN `project.dataset.Products` p
  ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY total_sales DESC;
