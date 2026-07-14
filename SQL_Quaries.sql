CREATE DATABASE sales_db;
Use sales_db;

SELECT * FROM sales_data;
SELECT COUNT(*) FROM sales_data;


-- Total Revenue --
SELECT ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM sales_data;

-- Top product by revenue --
SELECT Product,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Product
ORDER BY Revenue DESC;


-- Revenue by Category--
SELECT Category,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Category
ORDER BY Revenue DESC;

-- Revenue by City --
SELECT City,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY City
ORDER BY Revenue DESC;

-- Revenue by Gender -- 
SELECT Gender,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Gender;

-- Revenue by Age Group--
SELECT Age_Group,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Age_Group
ORDER BY Revenue DESC;


-- Monthly Sales Trend --
SELECT Month,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Month
ORDER BY Revenue DESC;


-- Top 10 Customers--
SELECT Customer_Name,
       ROUND(SUM(Total_Sales),2) AS Revenue
FROM sales_data
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Top Products by Quantity Sold --
SELECT Product,
       SUM(Quantity) AS Total_Quantity_Sold
FROM sales_data
GROUP BY Product
ORDER BY Total_Quantity_Sold DESC;

-- Average Order Value by Category --
SELECT Category,
       ROUND(AVG(Total_Sales),2) AS Avg_Order_Value
FROM sales_data
GROUP BY Category
ORDER BY Avg_Order_Value DESC;