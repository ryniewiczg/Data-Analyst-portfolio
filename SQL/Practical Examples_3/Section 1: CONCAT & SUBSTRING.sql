1. Combine customers’ first name and last name into one column “Full Name”.

SELECT 
  CONCAT(Firstname, ' ', LastName) AS Full_Name,
  *
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Customers`;


2. Add the prefix “Product:” before each product name.

SELECT 
  CONCAT('Product: ', product_name) AS product_name
FROM products;
