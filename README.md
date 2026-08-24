# sales-data-analytics

A collection of SQL scripts that turn a sales data warehouse into business insights. The analysis is centered on **sales performance**, enriched with **customer** and **product** data to understand who is buying, what is selling, and how the business is trending over time.

The queries are built on top of the star-schema warehouse from [sales-data-warehouse](https://github.com/FelixFelicis7/Sales-Data-Warehouse), and are organized around the business questions they answer rather than the SQL techniques they use.

## Analysis Themes

### 1. Understanding the Data (Exploratory Data Analysis EDA)
Getting a clear picture of what the data holds before diving into analysis: the structure of the database, the customer and product dimensions, the time span the sales cover, and the core measures available.

- `00_init_database.sql` — Set up the database and load the data.
- `01_database_exploration.sql` — Explore the tables and overall structure.
- `02_dimensions_exploration.sql` — Examine the customer and product dimensions.
- `03_date_range_exploration.sql` — Identify the time span and boundaries of the sales data.
- `04_measures_exploration.sql` — Explore the core sales measures and key metrics.

### 2. Sales Trends & Performance
Answering how the business is doing over time: how sales trend month to month and year to year, how they accumulate into growth, and how current performance compares against prior periods and benchmarks.

- `07_change_over_time_analysis.sql` — Track sales trends across months and years.
- `08_cumulative_analysis.sql` — Running totals and moving averages to measure growth.
- `09_performance_analysis.sql` — Compare performance against previous periods and averages.

### 3. Customer & Product Insights
Understanding who drives sales and what sells: ranking top and bottom performers, sizing sales across categories, grouping customers and products into segments, and measuring how each category contributes to the whole.

- `05_magnitude_analysis.sql` — Compare sales magnitude across dimensions.
- `06_ranking_analysis.sql` — Rank top and bottom customers, products, and categories.
- `10_data_segmentation.sql` — Segment customers and products into meaningful groups.
- `11_part_to_whole_analysis.sql` — Measure each category's contribution to total sales.

### 4. Reporting
Bringing the analysis together into consolidated, analytics-ready views that summarize key metrics for business consumption.

- `12_report_customers.sql` — Consolidated customer report with key metrics and segments.
- `13_report_products.sql` — Consolidated product report with key metrics and segments.

## Data

The analysis draws on three core datasets from the sales data warehouse:

- **Sales** — The central fact data (orders, quantities, amounts, dates).
- **Customers** — Customer attributes used to segment and profile buyers.
- **Products** — Product attributes used to analyze what sells and how categories perform.

## Skills Demonstrated

- SQL analytics: aggregations, window functions, CTEs, and subqueries
- Time-based, cumulative, and performance analysis
- Customer and product segmentation
- Building analytics-ready reporting views
- Working with a star-schema data warehouse

## Related Project

The data warehouse this analysis is built on lives here: **[sales-data-warehouse](https://github.com/FelixFelicis7/Sales-Data-Warehouse)** — an end-to-end SQL data warehouse over customer, sales, and product data, from raw source files to analytics-ready star-schema models.
