-- 6. Logistics & Shipping Efficiency


SELECT 
    ship_mode,
    AVG(EXTRACT(DAY FROM (ship_date - order_date))) AS avg_shipping_days,
    AVG(profit) AS avg_profit,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY
    ship_mode
ORDER BY 
    avg_profit DESC;



-- CTE's table (Both have same result)
WITH shipment_sales AS(
    SELECT 
       ship_mode,
       AVG(EXTRACT(DAY FROM(ship_date - order_date))) AS avg_shipping_days,
       SUM(sales) AS shipping_sales,
       AVG(profit) AS shipping_profit
    FROM superstore
    GROUP BY ship_mode
)
SELECT 
    ship_mode,
    avg_shipping_days,
    shipping_sales,
    shipping_profit
FROM shipment_sales
ORDER BY 
    shipping_profit DESC

    /*
    ## 📦 Logistics & Shipping Efficiency

### Average Shipping Time & Profitability by Mode

| Ship Mode | Avg Shipping Days | Avg Profit Per Order | Total Sales |
|-----------|-------------------|---------------------|-------------|
| First Class | 2.18 days | $31.84 | $351,428.43 |
| Second Class | 3.24 days | $29.54 | $459,193.44 |
| Same Day | 0.04 days | $29.27 | $128,363.12 |
| Standard Class | 5.01 days | $27.49 | $1,358,216.08 |

---

### 📊 Key Insights

| Metric | Best | Worst |
|--------|------|-------|
| **Fastest Shipping** | Same Day (0.04 days) | Standard Class (5.01 days) |
| **Highest Profit Per Order** | First Class ($31.84) | Standard Class ($27.49) |
| **Highest Sales Volume** | Standard Class (58%) | Same Day (5%) |
| **Best Balance** | Second Class | - |

---

### 💡 Key Takeaways

- 🚀 **First Class** = Fastest shipping + Highest profit per order ($31.84)
- 📦 **Standard Class** = 58% of sales but lowest profit per order ($27.49)
- ⚖️ **Second Class** = Best balance of speed, profit, and volume
- 💰 Faster shipping = **higher profit per order**

---

### 📝 SQL Query Used

```sql
SELECT 
    ship_mode,
    AVG(EXTRACT(DAY FROM (ship_date - order_date))) AS avg_shipping_days,
    AVG(profit) AS avg_profit,
    SUM(sales) AS total_sales
FROM superstore
GROUP BY ship_mode
ORDER BY avg_shipping_days;
```
*/