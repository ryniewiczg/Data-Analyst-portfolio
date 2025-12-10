#Task 10: List all products that are out of stock
SELECT 
  i.ProductID,
  p.ProductName,
  i.Quantity
FROM `project.dataset.Inventory` i
JOIN `project.dataset.Products` p USING (ProductID)
WHERE i.Quantity = 0;
