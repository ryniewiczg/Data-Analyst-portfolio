Subqueries and CTEs – Exercises

1. Subquery in SELECT clause.
Find OrderID and TotalAmount for each order and display the average order value next to each row.

SELECT
  order_id,
  order_value AS total_amount,
  (SELECT AVG(order_value)
   FROM `plasma-climber-480814-i2.Data_5.Orders`) AS avg_order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`;


2. Subquery in WHERE clause.
Find all orders whose value is less than or equal to the average order value across all customers.

SELECT
  order_id,
  order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`
WHERE order_value <= (
  SELECT AVG(order_value)
  FROM `plasma-climber-480814-i2.Data_5.Orders`
);


3. Subquery in FROM clause.
Calculate the average order value including a 10% discount for all orders per customer (and per country).

SELECT
  customer_id,
  country,
  AVG(discounted_value) AS avg_order_value_with_discount
FROM (
  SELECT
    o.customer_id,
    c.country,
    o.order_value * 0.9 AS discounted_value
  FROM `plasma-climber-480814-i2.Data_5.Orders` o
  JOIN `plasma-climber-480814-i2.Data_5.Customers` c
    ON o.customer_id = c.customer_id
)
GROUP BY customer_id, country;


4. Correlated subquery.
Find orders whose value is less than or equal to the average order value for the given customer.

SELECT
  o.order_id,
  o.customer_id,
  o.order_value
FROM `plasma-climber-480814-i2.Practima_Meeting_5.Orders` o
WHERE o.order_value <= (
  SELECT AVG(o2.order_value)
  FROM `plasma-climber-480814-i2.Practima_Meeting_5.Orders` o2
  WHERE o2.customer_id = o.customer_id
);


5. Subquery with top-selling product.
Find order details (OrderID, TotalAmount) for the product with the highest total sales value.

SELECT
  order_id,
  order_value
FROM `plasma-climber-480814-i2.Data_5.Orders`
WHERE product_id = (
  SELECT product_id
  FROM `plasma-climber-480814-i2.Data_5.Orders`
  GROUP BY product_id
  ORDER BY SUM(order_value) DESC
  LIMIT 1
);


6. CTE – customer spend.
Create a CTE that calculates total order value per customer. Display only customers who spent more than 1000 and placed at least one order worth 200 or more.

WITH customer_spend AS (
  SELECT
    customer_id,
    SUM(order_value) AS total_spent,
    MAX(order_value) AS max_order_value
  FROM `plasma-climber-480814-i2.Data_5.Orders`
  GROUP BY customer_id
)
SELECT *
FROM customer_spend
WHERE total_spent > 1000
  AND max_order_value >= 200;


7. CTE – inventory analysis.
Find the average inventory level per warehouse, including warehouse name and location, using a CTE.

WITH inventory_avg AS (
  SELECT
    warehouse_id,
    AVG(quantity) AS avg_inventory
  FROM `plasma-climber-480814-i2.Data_5.Inventory`
  GROUP BY warehouse_id
)
SELECT
  w.warehouse_name,
  w.location,
  i.avg_inventory
FROM inventory_avg i
JOIN `plasma-climber-480814-i2.Data_5.Warehouses` w
  ON i.warehouse_id = w.warehouse_id;


8. CTE – orders and products.
Create a CTE joining orders and products and calculate total order value per product category.

WITH order_products AS (
  SELECT
    o.order_value,
    c.category_name
  FROM `plasma-climber-480814-i2.Data_5.Orders` o
  JOIN `plasma-climber-480814-i2.Data_5.Products` p
    ON o.product_id = p.product_id
  JOIN `plasma-climber-480814-i2.Data_5.Categories` c
    ON p.category_id = c.category_id
)
SELECT
  category_name,
  SUM(order_value) AS total_order_value
FROM order_products
GROUP BY category_name
ORDER BY total_order_value DESC;


9. Subquery – above average customers.
Find customers whose total order value exceeds the average total order value of all customers.

SELECT
  customer_id,
  SUM(order_value) AS total_spent
FROM `plasma-climber-480814-i2.Data_5.Orders`
GROUP BY customer_id
HAVING total_spent > (
  SELECT AVG(customer_total)
  FROM (
    SELECT SUM(order_value) AS customer_total
    FROM `plasma-climber-480814-i2.Data_5.Orders`
    GROUP BY customer_id
  )
);


10. CTE – discounts.
Create a CTE with total order value and discounts per customer and display customers who received at least one discount.

WITH customer_discounts AS (
  SELECT
    o.customer_id,
    COUNT(o.discount_id) AS discount_count,
    SUM(o.order_value) AS total_order_value
  FROM `plasma-climber-480814-i2.Plasma_5.Orders` o
  WHERE o.discount_id IS NOT NULL
  GROUP BY o.customer_id
)
SELECT *
FROM customer_discounts
WHERE discount_count >= 1;


## What I Learned

- Writing subqueries in SELECT, WHERE, and FROM clauses
- Using correlated subqueries
- Building and querying CTEs for complex logic
- Combining aggregation, filtering, and joins
- Structuring advanced SQL queries in BigQuery


