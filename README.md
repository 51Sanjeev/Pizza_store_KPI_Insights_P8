# 🍕 Pizza Store Sales Analysis & Dashboard

A data analysis and business intelligence project based on pizza store sales data, using **MySQL and Microsoft Excel** to clean, analyze, and visualize sales performance.

The project focuses on transforming raw transactional data into meaningful business insights through **SQL analysis, KPI calculations, trend analysis, and an interactive Excel dashboard**.

---

## 📊 Dashboard Preview

![Pizza Store Sales Dashboard](Dashboard%20image.png)

---

## 🎯 Project Objective

The objective of this project is to analyze pizza store sales data and answer important business questions such as:

* How are sales performing over time?
* Which pizzas and categories generate the most revenue?
* Which pizza sizes are most popular?
* What are the busiest days and months?
* Which products contribute the most to total sales?
* What patterns can help the business make better decisions?

The project demonstrates an end-to-end workflow from **raw CSV data → SQL data preparation → analysis → Excel dashboard → business insights**.

---

## 🛠️ Tools & Technologies

* **MySQL** — Data storage, cleaning, transformation, and analysis
* **SQL** — Queries, aggregations, KPIs, and business analysis
* **Microsoft Excel** — Data visualization and dashboard creation
* **CSV** — Raw sales dataset

---

## 📁 Project Structure

```text
Pizza_store_P8/
│
├── pizza_sales.csv
├── Schema.sql
├── KPIs&Insights.sql
├── Query_execution_documentation.docx
├── Data Trends and Dashboard.xlsx
│
├── Dashboard image.png
├── Dashboard Background.jpg
├── Pizza Sticker.jpg
│
└── check(cr or n)_csv.ps1
```

### File Description

| File                                 | Description                                                |
| ------------------------------------ | ---------------------------------------------------------- |
| `pizza_sales.csv`                    | Raw pizza store sales dataset                              |
| `Schema.sql`                         | Database and table creation script                         |
| `KPIs&Insights.sql`                  | SQL queries used for KPI calculation and business analysis |
| `Query_execution_documentation.docx` | Documentation of SQL query execution and analysis          |
| `Data Trends and Dashboard.xlsx`     | Excel analysis, trends, KPIs, and dashboard                |
| `Dashboard image.png`                | Preview image of the final dashboard                       |
| `Dashboard Background.jpg`           | Dashboard background asset                                 |
| `Pizza Sticker.jpg`                  | Dashboard design asset                                     |
| `check(cr or n)_csv.ps1`             | PowerShell script used to identify CSV line-ending format  |

---

# 🗄️ Data Preparation with MySQL

The raw CSV data was imported into a MySQL database and structured into an `orders` table.

The import process included:

* Creating the database and table schema
* Loading CSV data using `LOAD DATA LOCAL INFILE`
* Handling empty cells and converting them to `NULL`
* Removing unnecessary spaces using `TRIM()`
* Converting the `order_date` from `DD-MM-YYYY` format into MySQL `DATE`
* Handling CSV field delimiters and quoted fields
* Identifying the correct CSV line-ending format (`LF` / `CRLF`)

Example date transformation:

```text
CSV:
15-01-2015

MySQL:
2015-01-15
```

---

# 📈 SQL Analysis

SQL was used to perform exploratory and business-focused analysis on the sales data.

The analysis includes:

### Key Performance Indicators

* Total Revenue
* Total Orders
* Total Pizzas Sold
* Average Order Value
* Average Pizzas Per Order

### Sales Analysis

* Daily sales trends
* Monthly sales trends
* Sales by pizza category
* Sales by pizza size
* Sales by individual pizza
* Orders by day of the week
* Orders by month

### Product Analysis

* Best-selling pizzas
* Lowest-selling pizzas
* Revenue contribution by pizza
* Quantity sold by pizza
* Category-level performance
* Size-level performance

---

# 📊 Excel Dashboard

The analyzed data was brought into Excel to create a visual dashboard.

The dashboard combines **KPIs, charts, filters, and trends** to provide a quick overview of the pizza store's performance.

The dashboard focuses on:

* Overall sales performance
* Revenue trends
* Order trends
* Product performance
* Category performance
* Pizza size distribution
* Daily and monthly sales patterns

---

# 🔍 Business Insights

The analysis can help identify:

* High-performing pizza categories
* Popular pizza sizes
* Products that contribute significantly to revenue
* Peak sales periods
* Low-performing products that may require attention
* Sales patterns across different days and months

These insights can support decisions related to **product strategy, inventory planning, promotions, and sales optimization**.

---

# 🔄 Project Workflow

```text
Raw CSV Data
     ↓
Data Understanding
     ↓
MySQL Database & Schema
     ↓
Data Import & Cleaning
     ↓
SQL Analysis
     ↓
KPI Calculation
     ↓
Excel Data Preparation
     ↓
Dashboard & Visualization
     ↓
Business Insights
```

---

# 💡 Key Learning Outcomes

Through this project, I practiced:

* Writing SQL queries for real-world business problems
* Creating and managing MySQL tables
* Importing large CSV datasets into MySQL
* Handling missing and inconsistent data
* Data type conversion
* Date transformation using `STR_TO_DATE()`
* Using `NULLIF()` and `TRIM()` for data cleaning
* Aggregation using `SUM()`, `COUNT()`, and `AVG()`
* Grouping and filtering data
* Extracting business insights from transactional data
* Building an Excel dashboard
* Creating data visualizations for business reporting
* Presenting analytical findings in a business-friendly format

---

# 🚀 Future Improvements

Some possible extensions to this project include:

* Adding more advanced SQL analysis
* Creating customer-level analysis if customer data becomes available
* Adding profit and cost analysis
* Building a Power BI version of the dashboard
* Automating the data refresh process
* Adding forecasting for future sales
* Creating a more detailed product recommendation analysis

---

## 📌 Project Summary

**Pizza Store Sales Analysis & Dashboard** demonstrates how SQL and Excel can be combined to turn raw transactional data into useful business intelligence.

The project covers the complete analytical process from **data ingestion and cleaning to SQL analysis, KPI development, visualization, and business insights**.

**Tools:** MySQL · SQL · Microsoft Excel · Data Analysis · Data Visualization
