#Task 9: Top 10 customers by total spending
SELECT 
  c.CustomerID,
  c.FirstName,
  c.LastName,
  SUM(p.Amount) AS total_spent
FROM `project.dataset.Payments` p
JOIN `project.dataset.Customers` c USING (CustomerID)
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY total_spent DESC
LIMIT 10;
