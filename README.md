# 📦 Zepto SQL Data Analysis (PostgreSQL)

This project contains end-to-end SQL data cleaning and analysis on a **Zepto e-commerce inventory dataset** using PostgreSQL.

---

## 🔍 1. What’s Included
- Data import & table creation  
- Data cleaning (nulls, duplicates, trimming, datatypes)  
- Feature engineering (Low/Medium/Bulk stock levels)  
- SQL analysis on pricing, discounts & inventory  
- Category-wise insights and stock evaluation  

---

## 🛠 2. Tech Used
- **PostgreSQL**  
- **DBeaver / pgAdmin**  
- **CSV dataset**

---

## 📂 3. Dataset Description

| Column Name             | Description                          |
|-------------------------|--------------------------------------|
| sku_id                  | Unique product identifier            |
| name                    | Product name                         |
| category                | Product category                     |
| mrp                     | Maximum Retail Price                 |
| discountpercent         | Discount percentage applied          |
| discountedsellingprice  | Selling price after discount         |
| availablequantity       | Quantity available in stock          |
| quantity                | Total units in inventory             |
| weightgmns              | Product weight in grams              |
| outofstock              | Stock status (True/False)            |

---

## ⭐ 4. Key Queries
- Cleaning text fields  
- Rounding numeric values  
- Categorizing products (Low/Medium/Bulk)  
- Average discount by category  
- Stock distribution & top products  

---

## 📊 5. Business Insights
- Top 10 best-value products based on discount percentage  
- High-MRP products currently out of stock  
- Estimated potential revenue per product category  
- Expensive products (MRP > ₹500) with low discount  
- Top 5 categories offering highest average discounts  
- Price-per-gram analysis for value-for-money items  
- Weight-based grouping (Low / Medium / Bulk)  
- Total inventory weight by category  

---

## 🚀 6. How to Run
1. Create a PostgreSQL database  
2. Import the CSV into your table  
3. Run SQL scripts provided in this repository  

---

## 📌 Author
**Pratik** — Data Analyst | SQL • Power BI • Python
