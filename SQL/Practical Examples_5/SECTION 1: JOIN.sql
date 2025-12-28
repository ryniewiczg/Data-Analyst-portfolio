1. Join data from the Orders and Customers tables to display order details (Order ID, customer full name, total order amount).

SELECT
  o.order_id,
  CONCAT(c.first_name, ' ', c.last_name) AS customer_full_name,
  o.total_amount
FROM `project.dataset.Orders` o
JOIN `project.dataset.Customers` c
  ON o.customer_id = c.customer_id;


2. Join data from the Orders and Payments tables to display all orders and their related payments (PaymentMethod, Status). Show NULL for orders without payments.

SELECT
  o.order_id,
  p.payment_method,
  p.status AS payment_status
FROM `project.dataset.Orders` o
LEFT JOIN `project.dataset.Payments` p
  ON o.order_id = p.order_id;


3. Display details of all warehouses and their assigned inventory. Even if a warehouse does not contain any products, include it in the results.

SELECT
  w.warehouse_id,
  w.warehouse_name,
  i.product_id,
  i.quantity
FROM `project.dataset.Warehouses` w
LEFT JOIN `project.dataset.Inventory` i
  ON w.warehouse_id = i.warehouse_id;


4. Join data from the Products and Discount tables and display the Product Category, Discount Type, and Discount Value.

SELECT
  p.Category AS ProductCategory,
  d.DiscountType,
  d.DiscountValue
FROM `project.dataset.Products` p
JOIN `project.dataset.Discount` d
  ON p.ProductID = d.ProductID;


5. Join data from the Customers and Orders tables and display all columns from the Orders table and the Customer Country.

SELECT
  o.*,
  c.Country AS CustomerCountry
FROM `project.dataset.Orders` o
JOIN `project.dataset.Customers` c
  ON o.CustomerID = c.CustomerID;


6. Join data from the Warehouses and Inventory tables. Add location, capacity, and manager information from the Warehouses table to the Inventory table.

SELECT
  i.ProductID,
  i.WarehouseID,
  i.Quantity,
  w.Location,
  w.Capacity,
  w.Manager
FROM `project.dataset.Inventory` i
JOIN `project.dataset.Warehouses` w
  ON i.WarehouseID = w.WarehouseID;


7. Join data from the Products and Inventory tables to show the current stock level of products.

SELECT
  p.ProductID,
  p.ProductName,
  p.Category,
  i.Quantity AS StockQuantity
FROM `project.dataset.Products` p
JOIN `project.dataset.Inventory` i
  ON p.ProductID = i.ProductID;


###Fact & Dimension JOIN Operations

1. Join data from the fact_store and dim_weather tables and display:
- weather description
- average waiting time
- average order preparation time
- StoreID
- Date

SELECT
  f.StoreID,
  f.Date,
  w.WeatherDescription,
  f.AvgWaitingTime,
  f.AvgPreparationTime
FROM `project.dataset.fact_store` f
JOIN `project.dataset.dim_weather` w
  ON f.WeatherID = w.WeatherID;


2. Join data from the fact_store and dim_coffee_batch tables and display:
- all columns from the fact table
- additionally, the country of origin of the coffee

SELECT
  f.*,
  c.CountryOfOrigin
FROM `project.dataset.fact_store` f
JOIN `project.dataset.dim_coffee_batch` c
  ON f.CoffeeBatchID = c.CoffeeBatchID;
  

3. Join data from the fact_store and dim_equipment tables and display:
- StoreID
- EquipmentID
- ServiceIntervalDays
- MilkWaste
- average waiting time
Calculate the difference (in days) between the last service date and the report date (TODAY).

SELECT
  f.StoreID,
  f.EquipmentID,
  e.ServiceIntervalDays,
  f.MilkWaste,
  f.AvgWaitingTime,
  DATE_DIFF(CURRENT_DATE(), f.LastServiceDate, DAY) AS DaysSinceLastService
FROM `project.dataset.fact_store` f
JOIN `project.dataset.dim_equipment` e
  ON f.EquipmentID = e.EquipmentID;






  



