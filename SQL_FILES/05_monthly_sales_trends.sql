-- 5. Time-Series Trend Analysis

SELECT
    DATE_TRUNC('month', order_date) AS order_month,
    SUM(sales) AS monthly_sales,
    SUM(profit) as monthly_profit
FROM superstore
GROUP BY
    DATE_TRUNC('month', order_date) 
ORDER BY order_month DESC


/*
## 📊 Monthly Sales & Profit Analysis

### Top 5 Months by Sales:
| Month | Year | Sales | Profit |
|-------|------|-------|--------|
| November | 2017 | $118,447 | $9,690 |
| December | 2016 | $96,999 | $17,885 |
| November | 2014 | $78,628 | $9,292 |
| November | 2015 | $75,972 | $12,474 |
| December | 2015 | $74,919 | $8,016 |

### Key Insights:
- 🎄 **November-December** = Peak holiday sales season
- 📉 **January-February** = Slowest months (post-holiday slump)
- 📈 **Steady growth** from 2014-2017
- ⚠️ **Losses in Jan 2015 and Jul 2014** need investigation

### Recommendations:
- 🔥 **Increase marketing** in November-December
- 📊 **Promote discounts** in January-February to boost sales
- 🔍 **Investigate losses** in January 2015 and July 2014
*/