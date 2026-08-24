# 📊 Sales Data Analytics

A collection of SQL scripts that turn a sales data warehouse into business insights. The analysis is centered on **sales performance**, enriched with **customer** and **product** data to understand who is buying, what is selling, and how the business is trending over time.

The queries are built on top of the star-schema warehouse from [Sales-Data-Warehouse](https://github.com/FelixFelicis7/Sales-Data-Warehouse), and are organized around the business questions they answer rather than the SQL techniques they use.

---

## 📖 What This Project Covers

- **Exploratory Data Analysis (EDA)** — Surveying the database structure, dimensions, date ranges, and core measures to understand the data.
- **Sales Trends & Performance** — Analyzing how sales trend over time, accumulate into growth, and compare against prior periods.
- **Customer & Product Insights** — Ranking, sizing, and segmenting customers and products to see what drives the business.
- **Reporting** — Consolidating the analysis into analytics-ready views for business consumption.

---

## 🧭 Analysis Themes

### 1. Understanding the Data (Exploratory Data Analysis — EDA)
Getting a clear picture of what the data holds before diving into analysis: the structure of the database, the customer and product dimensions, the time span the sales cover, and the core measures available.

- `00_init_database` — Set up the database and load the data.
- `01_database_exploration` — Explore the tables and overall structure.
- `02_dimensions_exploration` — Examine the customer and product dimensions.
- `03_date_range_exploration` — Identify the time span and boundaries of the sales data.
- `04_measures_exploration` — Explore the core sales measures and key metrics.

### 2. Sales Trends & Performance
Answering how the business is doing over time: how sales trend month to month and year to year, how they accumulate into growth, and how current performance compares against prior periods and benchmarks.

- `05_change_over_time_analysis` — Track sales trends across months and years.
- `06_cumulative_analysis` — Running totals and moving averages to measure growth.
- `07_performance_analysis` — Compare performance against previous periods and averages.

### 3. Customer & Product Insights
Understanding who drives sales and what sells: ranking top and bottom performers, sizing sales across categories, grouping customers and products into segments, and measuring how each category contributes to the whole.

- `08_magnitude_analysis` — Compare sales magnitude across dimensions.
- `09_ranking_analysis` — Rank top and bottom customers, products, and categories.
- `10_data_segmentation` — Segment customers and products into meaningful groups.
- `11_part_to_whole_analysis` — Measure each category's contribution to total sales.

### 4. Reporting
Bringing the analysis together into consolidated, analytics-ready views that summarize key metrics for business consumption.

- `12_report_customers` — Consolidated customer report with key metrics and segments.
- `13_report_products` — Consolidated product report with key metrics and segments.

---

## 📦 Data

The analysis draws on three core datasets from the sales data warehouse:

- **Sales** — The central fact data (orders, quantities, amounts, dates).
- **Customers** — Customer attributes used to segment and profile buyers.
- **Products** — Product attributes used to analyze what sells and how categories perform.

---

## 🎯 Skills I'm Practicing Here

- SQL analytics (T-SQL): aggregations, window functions, CTEs, and subqueries
- Exploratory data analysis
- Time-based, cumulative, and performance analysis
- Customer and product segmentation
- Building analytics-ready reporting views
- Working with a star-schema data warehouse

---

## 🛠️ Tools Used

- **SQL Server Express** — Lightweight server for hosting the database.
- **SQL Server Management Studio (SSMS)** — GUI for managing and querying the databases.
- **Git & GitHub** — Version control and hosting this project.

---

## 📂 Repository Structure
```
sales-data-analytics/
│
├── scripts/                              # SQL analysis scripts
│   ├── 00_init_database.sql              # Set up the database and load data
│   ├── 01_exploratory_analysis.sql       # EDA: database structure
│   ├── 02_sales_trend_performance.sql    # Analyzing how sales trend over time, accumulate into growth
│   ├── 03_customer_product_insights.sql  # Ranking, sizing, and segmenting customers and products
│   ├── 04_report_customers.sql           # Reporting: consolidated customer report
│   └── 05_report_products.sql            # Reporting: consolidated product report
│
├── README.md                             # Project overview (this file)
└── .gitignore                            # Files ignored by Git
```

---

## 🔗 Related Project

The data warehouse this analysis is built on lives here: **[Sales-Data-Warehouse](https://github.com/FelixFelicis7/Sales-Data-Warehouse)** — an end-to-end SQL data warehouse over customer, sales, and product data, from raw source files to analytics-ready star-schema models.

---

## 👋 About Me

Hi there! I'm **Lu**, a **Business Intelligence / Data Analytics** professional passionate about transforming raw data into insights that drive decisions. This project demonstrates my command of the full data workflow, from data modeling and ETL to SQL analytics.

Feel free to connect with me:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/christinaluliu/)
