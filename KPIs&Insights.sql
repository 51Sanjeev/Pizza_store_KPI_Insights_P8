-- 1. Total Revenue
SELECT 
	SUM(total_price) AS total_revenue
FROM orders;

-- 2. Average order Value
 SELECT
	SUM(total_price)/COUNT(DISTINCT order_id) AS Avg_order_value
 FROM orders;
 
 -- 3. Total Pizza Sold 
 SELECT
	SUM(quantity) AS Total_pizza_sold
FROM orders;

-- 4. Total order placed 
 SELECT
	COUNT(DISTINCT order_id) AS Total_order_placed
FROM orders;

-- 5. Average Pizza Sold
SELECT
	COUNT(quantity)/COUNT(DISTINCT order_id) AS AVG_pizza_Per_Order
FROM orders;

-- 6. Day vise trends
SELECT
	DAYNAME(order_date) AS Week_days,COUNT(DISTINCT order_id) AS Order_placed
FROM orders
GROUP BY 1;
 
 -- 7. Hourly Trends
SELECT
	HOUR(order_time) AS Hour_of_day, COUNT(DISTINCT order_id) AS Order_placed_in_hour
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

-- 8. Percentage sales on pizza category
SELECT
	pizza_category, 
    ROUND(
		(SUM(total_price) /(SELECT SUM(total_price) FROM orders)
        )*100,2) AS Pizza_category_sales_percentage
FROM orders
GROUP BY 1;

-- 9. Percentage of sales by Pizza_size
SELECT
	pizza_size, 
    ROUND(
		(SUM(total_price) /(SELECT SUM(total_price) FROM orders)
        )*100,2) AS Pizza_size_sales_percentage
FROM orders
GROUP BY 1; 

-- 10. Total Pizza sold by category
SELECT
	pizza_category,
    SUM(quantity) as Total_pizza_sold
FROM orders
GROUP BY 1;

-- 11. TOP 5 bestSeller Pizzas
SELECT
	pizza_name,
    SUM(quantity) as Total_sales_amount
FROM orders
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- 12. Bottom 5 bestSeller Pizzas
SELECT
	pizza_name,
    SUM(quantity) as Total_sales_amount
FROM orders
GROUP BY 1
ORDER BY 2
LIMIT 5