1. Basic aggregation
Count number of orders and average order value.

SELECT
  COUNT(*) AS total_orders,
  AVG(order_value) AS avg_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`;


2. Distinct count
How many unique products were shipped to each warehouse.

SELECT
  warehouse_id,
  COUNT(DISTINCT product_id) AS unique_products
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY warehouse_id
ORDER BY warehouse_id;


3. Grouping by one column
Total order value per customer.

SELECT
  customer_id,
  SUM(order_value) AS total_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY customer_id
ORDER BY total_order_value DESC;


4. Grouping by multiple columns
Number of orders by shipping city and payment method.

SELECT
  shipping_city,
  payment_method,
  COUNT(*) AS number_of_orders
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY shipping_city, payment_method
ORDER BY number_of_orders DESC;


5. HAVING
Customers who spent more than 500.

SELECT
  customer_id,
  SUM(order_value) AS total_spent
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY customer_id
HAVING total_spent > 500
ORDER BY total_spent DESC;


6. Grouping + averages
Average order value per warehouse.

SELECT
  w.warehouse_name,
  AVG(o.order_value) AS avg_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders` o
JOIN `plasma-climber-480814-i2.Data_5.Warehouses` w
  ON o.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_name
ORDER BY avg_order_value DESC;

7. Summation
Total order value where discounts were applied, grouped by discount type.

SELECT
  d.discount_type,
  SUM(o.order_value) AS total_discounted_value
FROM `plasma-climber-480814-i2.Data_5.Orders` o
JOIN `plasma-climber-480814-i2.Data_5.Discounts` d
  ON o.discount_id = d.discount_id
GROUP BY d.discount_type
ORDER BY total_discounted_value DESC;


## What I Learned:

- Using SQL aggregation functions (`COUNT`, `SUM`, `AVG`, `MIN`)
- Grouping data with `GROUP BY` and filtering results with `HAVING`
- Joining multiple tables to perform meaningful aggregations
- Performing time-based analysis using `DATE_TRUNC`
- Translating business questions into BigQuery SQL queries


