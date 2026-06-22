-- Total rows
SELECT COUNT(*) AS total_rows
FROM superstore;


-- NULL CELLS
SELECT 
    COUNT(*) - COUNT(order_id) AS missing_order_ids,
    COUNT(*) - COUNT(customer_id) AS missing_customer_ids,
    COUNT(*) - COUNT(sales) AS missing_sales
FROM superstore;


-- TOTAL FINANCIAL OVERVIEW:
SELECT
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit,
    (SUM(profit)/SUM(sales)) * 100 AS profit_margin_percentage
FROM superstore;


-- Time Range of the Data
SELECT
    MIN(order_date) AS first_order,
    Max(order_date) AS last_order
FROM superstore;