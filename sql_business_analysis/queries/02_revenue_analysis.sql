SELECT COUNT(*) AS total_rows
FROM superstore_raw;

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_raw;

SELECT region,
    ROUND(SUM(sales),2) AS sales
FROM superstore_raw
GROUP BY region
ORDER BY sales DESC;