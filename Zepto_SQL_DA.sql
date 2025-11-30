drop table if exists zepto;

CREATE TABLE zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

-- DATA EXPLORATION
-- checking count of data 

SELECT COUNT(*) FROM zepto;

-- fetch first 10 rows to check

SELECT * FROM zepto LIMIT 10;

-- check null

SELECT * FROM ZEPTO
WHERE name IS NULL OR
category IS NULL OR
discountPercent IS NULL OR
availableQuantity IS NULL OR
weightInGms IS NULL OR
outOfStock IS NULL OR
quantity IS NULL OR
discountedSellingPrice IS NULL OR
mrp IS NULL;

-- -- different categpries

SELECT DISTINCT category 
FROM zepto ORDER BY category;

-- check product outofstock vs instock
SELECT outOfStock,COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

-- checking if product name is more than one time
SELECT name,COUNT(sku_id) AS NO_of_SKUs
FROM zepto
GROUP BY name
HAVING COUNT(name) >1
ORDER BY NO_of_SKUs DESC;

-- DATA CLEANING

-- checking for duplicate sku_id's

SELECT sku_id
FROM zepto
GROUP BY sku_id 
HAVING COUNT(sku_id) > 1;

-- checking for if mrp is 0 for any product

SELECT * FROM zepto
WHERE mrp = 0 ;

DELETE FROM zepto
WHERE mrp = 0;

-- in data the price are in paisa not Rs so converting paisa into Rs

UPDATE zepto
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT * FROM zepto LIMIT 5;

-- FINDING INSOGHTS

-- Q1. Find the top 10 best-value products based on the discount percentage.

SELECT DISTINCT name,mrp,discountPercent FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name,mrp,outOfStock FROM zepto
WHERE outOfStock = True
ORDER BY mrp DeSC; 

-- Q3.Calculate Estimated Revenue for each category

SELECT category,SUM (discountedSellingPrice*availableQuantity) AS toTal_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue DESC;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

SELECT DISTINCT name,mrp,discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10.0;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.

SELECT category,ROUND(AVG(discountPercent),2) AS avg_discount_percent
FROM zepto GROUP BY category
ORDER BY avg_discount_percent DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.

SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram DESC;

-- Q7.Group the products into categories like Low, Medium, Bulk.

SELECT DISTINCT name,quantity,category,
CASE 
    WHEN quantity < 100 THEN 'LOW'
    WHEN quantity BETWEEN 100 AND 600 THEN 'MEDIUM'
	ELSE 'BULK'
    END AS product_quantity
FROM zepto;

-- Q8.What is the Total Inventory Weight Per Category

SELECT category, SUM(weightInGms*availableQuantity)  AS total_inventory_weight
FROM zepto
GROUP BY category
ORDER BY total_inventory_weight DESC
LIMIT 5;

SELECT * FROM zepto;