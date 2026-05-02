--Profit by region

SELECT region,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin
FROM superstore_rawGROUP BY region
ORDER BY total_profit DESC;

-- top 10 customers by sales

SELECT customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_raw
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Customer segments by profit margin

SELECT segment,
    COUNT(DISTINCT customer_id) AS customers,
    ROUND(SUM(sales),2) AS sales,
    ROUND(SUM(profit),2) AS profit
FROM superstore_raw
GROUP BY segment
ORDER BY sales DESC;
