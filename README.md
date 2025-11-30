📦 Zepto SQL Data Analysis (PostgreSQL)

This project contains end-to-end SQL data cleaning and analysis on a Zepto e-commerce inventory dataset using PostgreSQL.

1. 🔍 What’s Included

Data import & table creation

Data cleaning (nulls, duplicates, trimming, fixing datatypes)

Feature engineering (Low/Medium/Bulk stock levels)

SQL analysis on pricing, discounts, and inventory

Category-wise insights and stock evaluation

2. 🛠 Tech Used

PostgreSQL

DBeaver / pgAdmin

CSV dataset

3. 📂 Dataset Description

The dataset includes the following important fields:

- Column Name :	Description
- sku_id : Unique product identifier
- name	: Product name
- category	: Product category
- mrp	: Maximum Retail Price
- discountpercent	: Discount percentage applied
- discountedsellingprice	: Selling price after discount
- availablequantity	: Quantity available in stock
- quantity	: Total units in inventory
- weightgmns	: Product weight in grams
- outofstock	: Stock status (True/False)

4. ⭐ Key Queries

Cleaning text fields

Rounding values

Categorizing products

Average discount by category

Stock distribution and top products

5. 📊 Business Insights
Found top 10 best-value products based on discount percentage

Identified high-MRP products that are currently out of stock

Estimated potential revenue for each product category

Filtered expensive products (MRP > ₹500) with minimal discount

Ranked top 5 categories offering highest average discounts

Calculated price per gram to identify value-for-money products

Grouped products based on weight into Low, Medium, and Bulk categories

Measured total inventory weight per product category

6. 🚀 How to Run

Create PostgreSQL DB

Import CSV

Run SQL scripts in this repo

📌 Author

Pratik — Data Analyst | SQL • Power BI • Python
