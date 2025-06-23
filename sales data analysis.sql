-- 1. Total Sales
SELECT ROUND(SUM(sales), 2) AS total_sales FROM sales_data;

-- 2. Sales by Month
SELECT 
    month,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- 3. Sales by City
SELECT 
    city,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC;

-- 4. Sales by Time of Day
SELECT 
    time_of_day,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY time_of_day
ORDER BY total_sales DESC;

-- 5. Sales by Product
SELECT 
    product,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC;

-- 6. Sales by Product Category
SELECT 
    product_category,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY product_category
ORDER BY total_sales DESC;

-- 7. Top 5 Products by Sales
SELECT 
    product,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY product
ORDER BY total_sales DESC
LIMIT 5;

-- 8. Monthly Trend for Macbook Pro Laptop
SELECT 
    month,
    ROUND(SUM(sales), 2) AS macbook_sales
FROM sales_data
WHERE product = 'Macbook Pro Laptop'
GROUP BY month
ORDER BY month;

-- 9. Top City by Total Sales
SELECT 
    city,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1;

-- 10. Month with Lowest Sales
SELECT 
    month,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY total_sales ASC
LIMIT 1;

-- 11. Highest Single Order Value
SELECT 
    order_id,
    product,
    sales
FROM sales_data
ORDER BY sales DESC
LIMIT 1;

-- 12. Average Order Value
SELECT 
    ROUND(AVG(sales), 2) AS average_order_value
FROM sales_data;

-- 13. Most Frequently Ordered Product
SELECT 
    product,
    SUM(quantity_ordered) AS total_quantity
FROM sales_data
GROUP BY product
ORDER BY total_quantity DESC
LIMIT 1;

-- 14. Best City for Macbook Pro Laptop Sales
SELECT 
    city,
    ROUND(SUM(sales), 2) AS macbook_sales
FROM sales_data
WHERE product = 'Macbook Pro Laptop'
GROUP BY city
ORDER BY macbook_sales DESC;

