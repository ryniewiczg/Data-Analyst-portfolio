#Task 5: Display orders along with customer details
SELECT 
  o.OrderID,
  o.OrderDate,
  c.FirstName,
  c.LastName,
  c.Email
FROM `project.dataset.Orders` o
JOIN `project.dataset.Customers` c
  ON o.CustomerID = c.CustomerID;
