/*
===============================================================================
1. Understanding the Data (Exploratory Data Analysis - EDA)
===============================================================================
Purpose:
    - To get a clear picture of what the data holds before diving into analysis:
      the structure of the database, the customer and product dimensions,
      the time span the sales cover, and the core measures available.

Contents:
    - Database Exploration    : Explore the tables and overall structure.
    - Dimensions Exploration  : Examine the customer and product dimensions.
    - Date Range Exploration  : Identify the time span and boundaries of the sales data.
    - Measures Exploration    : Explore the core sales measures and key metrics.

Tables Used:
    - gold.dim_customers
    - gold.dim_products
    - gold.fact_sales
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

-- 01_database_exploration.sql — Explore the tables and overall structure.
-- Retrieve a list of all tables in the database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Retrieve all columns for a specific table (dim_customers)
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';

-- 02_Dimensions Exploration  : Examine the customer and product dimensions.
-- Explore Dimensions
-- Explore All Countries our customers come from.

SELECT DISTINCT country FROM gold.dim_customers;

-- Explore All Categories 'The major divisions'
  
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1,2,3;

-- 03_Date Range Exploration  : Identify the time span and boundaries of the sales data.
-- Find the date of the first and last order
-- How many years of sales are available
SELECT
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years
FROM gold.fact_sales;

-- Find the youngest and the oldest customer
SELECT
MIN(birthday_date) AS oldest_birthdate,
MAX(birthday_date) AS youngest_birthdate,
DATEDIFF(year, MIN(birthday_date), GETDATE()) AS oldest_customer,
DATEDIFF(year, MAX(birthday_date), GETDATE()) AS youngest_customer
FROM gold.dim_customers;

--================================================================
-- 04_Measures Exploration    : Explore the core sales measures and key metrics.
--================================================================

-- Find how many items are sold
SELECT SUM(sales_quantity) AS total_quantity FROM gold.fact_sales;

-- Find the average selling price
SELECT AVG(price) AS avg_price FROM gold.fact_sales;

-- Find the total number of orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales
SELECT * FROM gold.fact_sales;

-- Find the total number of products
SELECT COUNT(product_key) AS total_products FROM gold.dim_products
SELECT COUNT(DISTINCT product_key) AS total_products FROM gold.dim_products;

-- Find the total number of customers
SELECT COUNT(customer_key) AS total_customers FROM gold.dim_customers;

-- Find the total number of customers that have placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales;

 -- ============================================================
 -- Create report that shows all key metrics of the business
 -- ============================================================

SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' AS measure_name, SUM(sales_quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price' AS measure_name, AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Orders' AS measure_name, COUNT(DISTINCT order_number) AS measure_value FROM gold.fact_sales
UNION ALL 
SELECT 'Total Nr. Products' AS measure_name, COUNT(product_name) AS measure_value FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers;
