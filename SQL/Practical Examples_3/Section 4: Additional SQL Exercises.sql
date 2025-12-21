These exercises focus on advanced SQL string manipulation and data filtering techniques.
They include combining and formatting text fields, replacing specific values, cleaning whitespace, and applying logical conditions to filter results across multiple tables.

Exercise 1: Filtering and Replacing Text
Display all subcategories with an ID lower than 20. Replace the category name “Electronics” with “Electronics & Technology”.

SELECT 
  SubcategoryID,
  REPLACE(CategoryName, 'Electronics', 'Electronics & Technology') AS CategoryName
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Subcategories`
WHERE SubcategoryID < 20;


Exercise 2: CONCAT, LENGTH, Filtering
Combine customer data by creating one column “International Code” consisting of the postal code and country.
Display only customers whose last name is shorter than five characters.

SELECT 
  CONCAT(PostalCode, ' - ', Country) AS International_Code,
  FirstName,
  LastName
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Customers`
WHERE LENGTH(LastName) < 5;


Exercise 3: SUBSTRING, CONCAT, Filtering
In the Products table:
- extract the first 3 characters from product names,
- add the first 3 digits of the SKU number,
- name the column “Identifier”,
- display production cost with the prefix “Cost:”,
- show only products with a production cost greater than 300.

SELECT 
  CONCAT(
    SUBSTRING(ProductName, 1, 3),
    SUBSTRING(SKU, 1, 3)
  ) AS Identifier,
  CONCAT('Cost: ', ProductionCost) AS Production_Cost
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Products`
WHERE ProductionCost > 300;


Exercise 4: UPPER
In the Products table, display all product names in uppercase.

SELECT 
  UPPER(ProductName) AS ProductName
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Products`;


Exercise 5: REPLACE and Filtering
In the Products table, replace the word “Item” with “It.” in product names.
Display only products with a production cost greater than 400.

SELECT 
  REPLACE(ProductName, 'Item', 'It.') AS ProductName,
  ProductionCost
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Products`
WHERE ProductionCost > 400;


Exercise 6: LENGTH and Filtering
In the Products table, calculate the number of characters in product names.
Display only products with name lengths greater than 7 characters.

SELECT 
  ProductName,
  LENGTH(ProductName) AS Name_Length
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Products`
WHERE LENGTH(ProductName) > 7;


Exercise 7: LEFT
In the Warehouses table, extract the first 2 characters from warehouse names.

SELECT 
  LEFT(WarehouseName, 2) AS Warehouse_Prefix
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Warehouses`;


Exercise 8: TRIM
In the Warehouses table, remove leading and trailing whitespace from warehouse names.
Display all cleaned warehouse names.

SELECT 
  TRIM(WarehouseName) AS Cleaned_Warehouse_Name
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Warehouses`;


Exercise 9: REPLACE
Display the payments table while removing the word “Credit” from “Credit Card” in the payment method column.

SELECT 
  REPLACE(PaymentMethod, 'Credit ', '') AS Payment_Method
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Payments`;

  






















