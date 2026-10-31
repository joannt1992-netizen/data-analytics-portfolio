-- Global Superstore SQL Queries

-- 1. Sales and Profit by Category
SELECT category, SUM(sales), SUM(profit)
FROM global_superstore.superstore
GROUP BY category;

-- 2. Profit Margin by Category
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit,
ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percentage
FROM global_superstore.superstore
GROUP BY category;

-- 3. Sales Trend by Month and Year
SELECT 
YEAR(order_date) AS Sales_Year,
MONTH(order_date) AS Sales_Month,
MONTHNAME(order_date) AS Month_Name,
SUM(sales) AS Total_Sales
FROM global_superstore.superstore
WHERE YEAR(order_date) BETWEEN 2011 AND 2014
GROUP BY 
YEAR(order_date),
MONTH(order_date),
MONTHNAME(order_date)
ORDER BY
Sales_Month ASC,
Sales_Year ASC;
