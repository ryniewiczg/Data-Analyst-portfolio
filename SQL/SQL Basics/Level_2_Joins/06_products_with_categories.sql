#Task 6: Display products along with their category name
SELECT 
  p.ProductID,
  p.ProductName,
  c.CategoryName
FROM `project.dataset.Products` p
LEFT JOIN `project.dataset.Categories` c
  ON p.CategoryID = c.CategoryID;
