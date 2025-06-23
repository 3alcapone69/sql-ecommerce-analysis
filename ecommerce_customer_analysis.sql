--Task 1: The first 5 Orders
SELECT *
FROM ecommerce_orders eo 
LIMIT 5;

--Task 2: Count Total Orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_orders eo ;

--Task 3: Calculate Total Revenue
SELECT SUM(order_amount) AS total_revenue
FROM ecommerce_orders eo ;

--Task 4: Find Average Order Value
SELECT ROUND(AVG(order_amount), 2) AS avg_order_value
FROM ecommerce_orders eo ;

--Task 5: Revenue by Customer
SELECT customer_id , SUM(order_amount) AS customer_revenue
FROM ecommerce_orders eo 
GROUP BY customer_id 
ORDER BY customer_revenue DESC;

--Task 6: Top 5 Customers by Spending
SELECT customer_id, SUM(order_amount) AS total_spent
FROM ecommerce_orders eo 
GROUP BY customer_id 
ORDER BY total_spent DESC 
LIMIT 5;

--Task 7: Orders per Month
SELECT STRFTIME('%Y-%m', order_date) AS order_month,
       SUM(order_amount ) AS monthly_revenue 
FROM ecommerce_orders eo 
GROUP BY order_month 
ORDER BY order_month;

--Task 8: Customers with More Than 1 Order
SELECT customer_id, COUNT(order_id) AS order_count
FROM ecommerce_orders eo 
GROUP BY customer_id 
HAVING COUNT(order_id) > 1
ORDER BY order_count DESC ;

--Task 9: See What Customers Table Looks Like
SELECT *
FROM customers_eo ce 
LIMIT 5 ;

--Task 10: Join Orders with Customer Info
SELECT eo.order_id  , eo.order_id  , eo.order_amount ,
       ce.customer_id  ,ce.country  
FROM ecommerce_orders eo 
JOIN customers_eo ce ON eo.customer_id  = ce.customer_id 
LIMIT 10;

--Task 11: Total Revenue by Country
SELECT ce.country , SUM(order_amount) AS revenue
FROM ecommerce_orders eo 
JOIN customers_eo ce ON eo.customer_id = ce.customer_id 
GROUP BY ce.country
ORDER BY revenue DESC;

--Task 12: Top 5 Customers with Name & Country
SELECT customer_name, country, SUM(order_amount) AS total_spent
FROM ecommerce_orders eo 
JOIN customers_eo ce ON eo.customer_id = ce.customer_id 
GROUP BY total_spent DESC
ORDER BY total_spent DESC 
LIMIT 5;

--Task 13: Monthly Revenue per Country
SELECT 
  STRFTIME('%Y-%m', eo.order_date) AS month,
  ce.country,
  SUM(eo.order_amount) AS monthly_revenue
FROM ecommerce_orders eo
JOIN customers_eo ce 
  ON ce.customer_id = eo.customer_id
GROUP BY month, ce.country
ORDER BY month, monthly_revenue DESC;







  

