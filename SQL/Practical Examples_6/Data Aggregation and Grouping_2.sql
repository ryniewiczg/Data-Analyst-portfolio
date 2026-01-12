1. In the Orders table, calculate the total order value for each month.

SELECT
  DATE_TRUNC(order_date, MONTH) AS order_month,
  SUM(order_value) AS total_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY order_month
ORDER BY order_month;


2. In the Products and Inventory tables, find the maximum inventory level for each product in each warehouse.

SELECT
  i.product_id,
  i.warehouse_id,
  MAX(i.quantity) AS max_inventory_level
FROM `plasma-climber-480814-i2.Data_5.Inventory` i
GROUP BY i.product_id, i.warehouse_id
ORDER BY i.product_id, i.warehouse_id;


3. In the Products and Orders tables, calculate the average order value for products whose names start with the letter "P".

SELECT
  p.product_name,
  AVG(o.order_value) AS avg_order_value
FROM `plasma-climber-480814-i2.Data_5.Products` p
JOIN `plasma-climber-480814-i2.Data_5.Orders` o
  ON p.product_id = o.product_id
WHERE p.product_name LIKE 'P%'
GROUP BY p.product_name
ORDER BY avg_order_value DESC;

4. In the Orders table, calculate the average order value rounded to two decimal places for each customer.

SELECT
  customer_id,
  ROUND(AVG(order_value), 2) AS avg_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY customer_id
ORDER BY avg_order_value DESC;


5. In the Products table, find the minimum inventory value for products whose names are longer than 10 characters.

SELECT
  p.product_name,
  MIN(i.quantity) AS min_inventory_level
FROM `plasma-climber-480814-i2.Data_5.Products` p
JOIN `plasma-climber-480814-i2.Data_5.Inventory` i
  ON p.product_id = i.product_id
WHERE LENGTH(p.product_name) > 10
GROUP BY p.product_name
ORDER BY min_inventory_level;


## What I Practiced

- Monthly time-based aggregations
- Aggregations across multiple dimensions
- Joining fact and dimension tables
- Filtering text data using LIKE and LENGTH
- Rounding numeric results for reporting


