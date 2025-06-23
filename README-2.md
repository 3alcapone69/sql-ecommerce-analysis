# 🛒 E-commerce Customer Order SQL Analysis

This project uses SQL to analyze fictional e-commerce order and customer data. It answers real-world business questions using practical SQL techniques and joins. Designed as a beginner-friendly but employer-relevant data portfolio project.

---

## 📁 Dataset Overview

- `ecommerce_orders`: Contains order-level transaction data.
- `customers_eo`: Contains customer demographics and location.

---

## 🔍 Business Questions Answered

1. What is the total number of orders?
2. What is the total revenue generated?
3. What is the average order value?
4. Who are the top 5 customers by total spending?
5. How much revenue does each customer generate?
6. What are the monthly revenue trends?
7. Which customers made more than one purchase?
8. How does customer location affect revenue?
9. What is the revenue by country each month?

---

## 🛠️ SQL Concepts Used

- `SELECT`, `WHERE`, `LIMIT`
- `GROUP BY`, `ORDER BY`, `HAVING`
- `JOIN` between orders and customers
- `STRFTIME()` to extract month from date
- Aggregations: `SUM()`, `AVG()`, `COUNT()`, `ROUND()`

---

## 📌 Sample Tasks from the Analysis

```sql
-- Top 5 customers by revenue
SELECT customer_id, SUM(order_amount) AS total_spent
FROM ecommerce_orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly revenue per country
SELECT 
  STRFTIME('%Y-%m', eo.order_date) AS month,
  ce.country,
  SUM(eo.order_amount) AS monthly_revenue
FROM ecommerce_orders eo
JOIN customers_eo ce ON eo.customer_id = ce.customer_id
GROUP BY month, ce.country
ORDER BY month, monthly_revenue DESC;
```

---

## ✅ Outcome

A clean and professional SQL analysis project demonstrating entry-level analyst skills expected in real job roles. The analysis can be extended to dashboards or Python-based exploration later.

---

## 📂 Files Included

- `ecommerce_customer_analysis.sql`
- `ecommerce_orders.csv`
- `customers_eo.csv`

---

## 💡 Author

- **Ilyass Salmouni**
- [Your LinkedIn or GitHub Profile]