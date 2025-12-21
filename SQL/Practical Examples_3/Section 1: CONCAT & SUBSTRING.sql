1. Combine customers’ first name and last name into one column “Full Name”.

SELECT 
  CONCAT(Firstname, ' ', LastName) AS Full_Name,
  *
FROM customers`;


2. Add the prefix “Product:” before each product name.

SELECT 
  CONCAT('Product: ', product_name) AS product_name
FROM products;


3. Extract the first 5 characters from product names and name the column “Short”.

SELECT 
  SUBSTRING(product_name, 1, 5) AS "Short"
FROM products;


4. Extract the last 3 characters from customers’ email addresses.

SELECT 
  SUBSTRING(email, LENGTH(email) - 2, 3) AS email_suffix
FROM customers;
