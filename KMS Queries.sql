----KMS ANALYSIS----
CREATE DATABASE KMS_inventory
CREATE TABLE dbo.KMS_Orders
Select * from dbo.KMS_Orders

---- CASE SCENARIO I----
	---1. Which product category had the highest sales?---
	SELECT Product_Category, 
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

	---2. What are the Top 3 and Bottom 3 regions in terms of sales?---
		SELECT TOP 5 * 
FROM dbo.KMS_Orders;

---Top 3 Regions by Sales---
SELECT TOP 3 Region, 
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
GROUP BY Region
ORDER BY Total_Sales DESC;

---Bottom 3 Regions by Sales---
SELECT TOP 3 Region, 
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
GROUP BY Region
ORDER BY Total_Sales ASC;


	--- 3.  What were the total sales of appliances in Ontario? ---
SELECT SUM(Sales) AS Total_Sales_Appliances_Ontario
FROM dbo.KMS_Orders
WHERE Product_Sub_Category = 'Appliances'
  AND Region = 'Ontario';


	--- 4. Bottom 10 Customers by Sales---
SELECT Customer_Name, 
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
GROUP BY Customer_Name
ORDER BY Total_Sales ASC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
		--Bottom 10 customers Frequent Purchase Category--
	SELECT Customer_Name, 
       Product_Category, 
       COUNT(*) AS Order_Count, 
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
WHERE Customer_Name IN (
  'Jeremy Farry', 'Natalie DeCherney', 'Nicole Fjeld', 'Katrina Edelman',
  'Dorothy Dickinson', 'Christine Kargatis', 'Eric Murdock', 
  'Chris McAfee', 'Rick Huthwaite', 'Mark Hamilton'
)
GROUP BY Customer_Name, Product_Category
ORDER BY Customer_Name, Total_Sales DESC;
	

	---5. KMS incurred the most shipping cost using which shipping method?---
SELECT TOP 5 * 
FROM dbo.KMS_Orders;

SELECT Ship_Mode, 
       SUM(Shipping_Cost) AS Total_Shipping_Cost
FROM dbo.KMS_Orders
GROUP BY Ship_Mode
ORDER BY Total_Shipping_Cost DESC;


---- CASE SCENARIO II----
	---6.  Most valuable customers, products or services they typically purchase.---
SELECT Customer_Name,
		Product_Category,
		SUm(Sales) AS Total_Sales,
		SUM(Profit) AS Total_Profit
FROM dbo.KMS_Orders
GROUP BY Customer_Name, Product_Category
ORDER BY Total_Sales DESC;

	---7. Small Business Customer with the Higest Sales---
SELECT Customer_Name,
       Customer_Segment,
       SUM(Sales) AS Total_Sales
FROM dbo.KMS_Orders
WHERE Customer_Segment = 'Small Business'
GROUP BY Customer_Name, Customer_Segment
ORDER BY Total_Sales DESC;

	---8. Corporate Customer with the most number of orders in 2009 – 2012---
SELECT Customer_Name,
       Customer_Segment,
       COUNT(DISTINCT Order_ID) AS Total_Orders
FROM dbo.KMS_Orders
WHERE Customer_Segment = 'Corporate'
GROUP BY Customer_Name, Customer_Segment
ORDER BY Total_Orders DESC;

	---9. Most Profitable Consumer Costumer---
SELECT Customer_Name,
       Customer_Segment,
       SUM(Profit) AS Total_Profit
FROM dbo.KMS_Orders
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name, Customer_Segment
ORDER BY Total_Profit DESC;

	---10. Customers who returned items and their segments---
SELECT DISTINCT Customer_Name,
       Customer_Segment
FROM dbo.KMS_Orders
WHERE Profit < 0;

	---11. Was shipping method used appropriately based on order priority---
SELECT Ship_Mode,
       Order_Priority,
       COUNT(*) AS Order_Count
FROM dbo.KMS_Orders
GROUP BY Ship_Mode, Order_Priority
ORDER BY Ship_Mode, Order_Priority;


----- Further Summaries for Visuals---
	---Total Sales and Profit by Region---
		SELECT 
    Region, 
    SUM(Sales) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM 
    KMS_Orders
GROUP BY 
    Region
ORDER BY 
    Total_Sales DESC;

		---Top 10 Customers by Sales and Profit---
		SELECT TOP 10 
    Customer_Name, 
    SUM(Sales) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM 
    KMS_Orders
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Sales DESC;

	SELECT TOP 10 
    Customer_Name, 
    SUM(Sales) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM 
    KMS_Orders
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Profit DESC;

	---Total Sales by Product Category
	SELECT 
    Product_Category, 
    SUM(Sales) AS Total_Sales
FROM 
    KMS_Orders
GROUP BY 
    Product_Category
ORDER BY 
    Total_Sales DESC;

	---Shipping Mode vs Order Priority---
SELECT 
    Ship_Mode, 
    Order_Priority, 
    COUNT(*) AS Order_Count
FROM 
    KMS_Orders
GROUP BY 
    Ship_Mode, 
    Order_Priority
ORDER BY 
    Ship_Mode, 
    Order_Priority;

	---Yearly Sales Trend---
SELECT 
    YEAR(Order_Date) AS Order_Year,
    SUM(Sales) AS Total_Sales
FROM 
    KMS_Orders
GROUP BY 
    YEAR(Order_Date)
ORDER BY 
    Order_Year;

	---Most Profitable Customer Segments---
SELECT 
    Customer_Segment, 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM 
    KMS_Orders
GROUP BY 
    Customer_Segment
ORDER BY 
    Total_Profit DESC;

	---Profit by Customer Segment---
	SELECT 
    Customer_Segment, 
    SUM(Sales) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM 
    KMS_Orders
GROUP BY 
    Customer_Segment
ORDER BY 
    Total_Profit DESC;
