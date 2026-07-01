CREATE DATABASE superstore_db;
USE superstore_db;
SHOW TABLES;
SELECT * FROM superstore_raw_data;
SELECT COUNT(*) FROM superstore_raw_data;
SELECT DISTINCT market FROM superstore_raw_data;
SELECT*FROM superstore_raw_data WHERE market='APAC';
SELECT COUNT(*) FROM superstore_raw_data WHERE market='APAC';
SELECT*FROM superstore_raw_data ORDER BY sales DESC;
SELECT market,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY market;
SELECT market,AVG(sales) AS Average_Sales FROM superstore_raw_data GROUP BY market;
SELECT MAX(sales) AS Highest_Sale FROM superstore_raw_data;
SELECT MIN(sales) AS Lowest_Sales FROM superstore_raw_data;
SELECT ship_mode, COUNT(*) FROM superstore_raw_data GROUP BY ship_mode;
SELECT segment, COUNT(*) AS Total_Orders FROM superstore_raw_data GROUP BY segment;
SELECT region,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY region;
SELECT state,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY state;
SELECT sub_category,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY sub_category;
SELECT product_name,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY product_name;
SELECT customer_name,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY customer_name;
SELECT market,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY market;
SELECT category,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY category;
SELECT segment,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY segment;
SELECT ship_mode,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY ship_mode;
SELECT region,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY region;
SELECT country,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY country;
SELECT state,SUM(profit) AS Total_Profit  FROM superstore_raw_data GROUP BY state;
SELECT sub_category,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY sub_category;
SELECT product_name,SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY product_name;
SELECT * FROM superstore_raw_data WHERE market='APAC' AND sales>500;
SELECT * FROM superstore_raw_data WHERE market='APAC' OR market='EU';
SELECT*FROM superstore_raw_data WHERE sales BETWEEN 100 AND 500;
SELECT * FROM superstore_raw_data WHERE market IN('APAC','EU','US');
SELECT*FROM superstore_raw_data WHERE customer_name LIKE 'J%';
SELECT*FROM superstore_raw_data LIMIT 10;
SELECT market,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY market HAVING SUM(sales)>5000;
SELECT segment,COUNT(*) AS Total_Orders FROM superstore_raw_data GROUP BY segment HAVING COUNT(*)>100;
SELECT*FROM superstore_raw_data ORDER BY sales DESC LIMIT 5;
SELECT customer_name,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY customer_name ORDER BY Total_Sales DESC LIMIT 5;
SELECT product_name,SUM(sales) AS Total_Sales FROM superstore_raw_data GROUP BY product_name ORDER BY Total_Sales DESC LIMIT 5;
SELECT DISTINCT market FROM superstore_raw_data;
SELECT customer_name,
       sales,
       CASE
           WHEN sales >= 1000 THEN 'High Sales'
           WHEN sales >= 500 THEN 'Medium Sales'
           ELSE 'Low Sales'
       END AS Sales_Category
FROM superstore_raw_data;
SELECT CASE WHEN sales >=1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category , COUNT(*) AS Total_Orders FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >=500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category, AVG(sales) AS Average_Sales FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category, MAX(sales) AS Maximum_Sales FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >=500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category,MIN(sales) AS Minimum_Sales FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELse 'Low Sales' END AS Sales_Category, SUM(profit) AS Total_Profit FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >=1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category, MAX(profit) AS Maximum_Profit FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category, MIN(profit) AS Minimum_Profit FROM superstore_raw_data GROUP BY Sales_Category;
SELECT CASE WHEN sales >= 1000 THEN 'High Sales' WHEN sales >= 500 THEN 'Medium Sales' ELSE 'Low Sales' END AS Sales_Category, AVG(profit) AS Average_Profit FROM superstore_raw_data GROUP BY Sales_Category;