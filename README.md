📦 Zepto SQL Data Analysis (PostgreSQL)

This project contains end-to-end SQL data cleaning and analysis on a Zepto e-commerce inventory dataset using PostgreSQL.

🔍 What’s Included

Data import & table creation

Data cleaning (nulls, duplicates, trimming, fixing datatypes)

Feature engineering (Low/Medium/Bulk stock levels)

SQL analysis on pricing, discounts, and inventory

Category-wise insights and stock evaluation

🛠 Tech Used

PostgreSQL

DBeaver / pgAdmin

CSV dataset

📂 Dataset Description

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

⭐ Key Queries

Cleaning text fields

Rounding values

Categorizing products

Average discount by category

Stock distribution and top products

📈 Key Insights

Discount patterns across categories

Stock imbalance between products

Detection of price inconsistencies

Low/Medium/Bulk inventory grouping

🚀 How to Run

Create PostgreSQL DB

Import CSV

Run SQL scripts in this repo

📌 Author

Pratik — Data Analyst | SQL • Power BI • Python
