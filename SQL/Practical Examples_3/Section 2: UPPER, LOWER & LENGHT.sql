1. Convert all product names to uppercase.

SELECT 
  UPPER(product_name) AS product_name
FROM products;


2. Convert all warehouse names to lowercase.

SELECT 
  LOWER(warehouse_name) AS warehouse_name
FROM warehouses;


3. Find the length of product names.

SELECT 
  product_name,
  LENGTH(product_name) AS name_length
FROM products;


4. Find customers whose last name is longer than 5 characters.

SELECT *
FROM customers
WHERE LENGTH(last_name) > 5;
