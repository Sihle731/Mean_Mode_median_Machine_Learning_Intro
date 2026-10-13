create database Retail_sales;

SELECT "Transaction ID", 
"Date", 
"Customer ID", 
"Gender", 
"Age", 
"Product Category", 
"Quantity", 
"Price per Unit", 
"Total Amount"
FROM public.retail_sales_dataset;

select * from retail_sales_dataset;


--mean
select AVG("Age") as averageAge,
avg("Quantity") as averageQuantity,
avg("Price per Unit") as averageUnitPrice,
AVG("Total Amount") as averageTotal
from retail_sales_dataset;

CREATE TABLE Customer_Sales_Summary AS
SELECT
COUNT("Customer ID") AS Total_Customers,
AVG(CAST("Quantity" AS INT)) AS AVG_Quantity,
SUM(CAST("Quantity" AS INT)) AS Total_Products_Sold,
AVG("Age") AS AVG_Customer_Age,
MAX("Age") AS Oldest_Customer,
MIN("Age") AS Youngest_Customer,
AVG("Price per Unit") AS AVG_Price_per_Unit,
AVG("Total Amount") AS AVG_Amount_Spent,
SUM("Total Amount") AS Total_Revenue_Raw
--TO_CHAR(SUM("Total Amount"),‘FM"R"999,999,999,990.00’) AS Total_Revenue_Formatted
from retail_sales_dataset;

SELECT * FROM Customer_Sales_Summary;

SELECT 'training Data',
"Transaction ID", 
"Date", 
"Customer ID", 
"Gender", 
"Age", 
"Product Category", 
"Quantity", 
"Price per Unit", 
"Total Amount"
FROM public.retail_sales_dataset
WHERE "Transaction ID" <= 700;


select 'test data',
"Transaction ID", 
"Date", 
"Customer ID", 
"Gender", 
"Age", 
"Product Category", 
"Quantity", 
"Price per Unit", 
"Total Amount"
from public.retail_sales_dataset
where "Transaction ID" >= 701