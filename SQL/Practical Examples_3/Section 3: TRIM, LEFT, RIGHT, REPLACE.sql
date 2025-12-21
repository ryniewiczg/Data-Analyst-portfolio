1. Remove whitespace from customers’ email addresses and display them as “Cleaned Email”.

SELECT 
  TRIM(email) AS "Cleaned Email"
FROM customers;


2. Remove leading spaces from warehouse names.

SELECT 
  LTRIM(warehouse_name) AS warehouse_name
FROM warehouses;


3. Extract the first 3 characters from product names.

SELECT 
  LEFT(product_name, 3) AS product_prefix
FROM products;


4. Extract the last 4 characters from warehouse names.

SELECT 
  RIGHT(warehouse_name, 4) AS warehouse_suffix
FROM warehouses;


5. Replace the word “Phone” with “Mobile” in product names.

SELECT 
  REPLACE(product_name, 'Phone', 'Mobile') AS product_name
FROM products;


6. Replace “USA” with “United States” in the country column.

SELECT 
  REPLACE(country, 'USA', 'United States') AS country
FROM customers;


