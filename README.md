# 📊 BlinkIT Sales Analytics Pipeline

**Excel → Alteryx → PostgreSQL**

## 📌 Project Overview

This project focuses on analyzing **BlinkIT grocery sales data** to understand sales performance, customer satisfaction, and inventory distribution.

The objective was to build a **data pipeline** that:

1. Extracts raw data from Excel
2. Performs data transformation using **Alteryx Designer**
3. Stores processed analytical datasets in **PostgreSQL**

This project demonstrates **ETL workflow development, SQL table design, and analytics data preparation**.

---

# 🛠️ Tools & Technologies

| Tool             | Purpose                   |
| ---------------- | ------------------------- |
| Excel            | Raw dataset               |
| Alteryx Designer | Data transformation (ETL) |
| PostgreSQL       | Database storage          |

---

# 📂 Data Source

Dataset: **BlinkIT Grocery Data**

The dataset contains the following attributes:

* Item Identifier
* Item Type
* Item Fat Content
* Outlet Identifier
* Outlet Location Type
* Outlet Size
* Outlet Type
* Outlet Establishment Year
* Sales
* Rating

---

# 🗄️ PostgreSQL Database Setup

## Step 1 — Create Database

```sql
CREATE DATABASE blinkit_sales;
```

---

## Step 2 — Create Tables

### KPI Summary Table

```sql
CREATE TABLE kpi_summary (
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);
```

---

### Sales by Fat Content

```sql
CREATE TABLE sales_by_fat_content (
    item_fat_content VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);
```

---

### Sales by Item Type

```sql
CREATE TABLE sales_by_item_type (
    item_type VARCHAR(100),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);
```

---

### Sales by Outlet Size

```sql
CREATE TABLE sales_by_outlet_size (
    outlet_size VARCHAR(20),
    total_sales NUMERIC
);
```

---

### Sales by Outlet Location

```sql
CREATE TABLE sales_by_location (
    outlet_location_type VARCHAR(20),
    total_sales NUMERIC
);
```

---

### Sales by Outlet Establishment Year

```sql
CREATE TABLE sales_by_establishment (
    outlet_establishment_year INT,
    total_sales NUMERIC
);
```

---

### Fat Content by Outlet

```sql
CREATE TABLE fat_content_by_outlet (
    outlet_identifier VARCHAR(50),
    item_fat_content VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);
```

---

### Metrics by Outlet Type

```sql
CREATE TABLE metrics_by_outlet_type (
    outlet_type VARCHAR(50),
    total_sales NUMERIC,
    avg_sales NUMERIC,
    number_of_items INT,
    avg_rating NUMERIC
);
```

---

# 🔌 Connecting PostgreSQL to Alteryx

To write processed data into PostgreSQL:

1. Installed **PostgreSQL ODBC Driver**
2. Created **System DSN connection**
3. Configured connection in **Alteryx Connection Manager**

Connection configuration example:

```
Driver: PostgreSQL Unicode
Server: localhost
Port: 5432
Database: blinkit_sales
User: postgres
```

---

# ⚙️ Alteryx Workflow Steps

## Step 1 — Input Data

Used **Input Data Tool** to load the Excel dataset.

```
BlinkIT Grocery Data.xlsx
```

---

## Step 2 — Data Preparation

Used **Select Tool** to define proper data types.

Examples:

* String → Item Type, Outlet Type, Fat Content
* Double → Sales, Rating
* Integer → Outlet Establishment Year

---

## Step 3 — KPI Calculations

Using **Summarize Tool** to compute:

* Total Sales
* Average Sales
* Number of Items
* Average Rating

---

# 📊 Analytical Transformations

The following aggregations were implemented using **Alteryx Summarize Tool**.

### KPI Summary

```
Total Sales
Average Sales
Number of Items
Average Rating
```

---

### Total Sales by Fat Content

Grouped by:

```
Item Fat Content
```

---

### Total Sales by Item Type

Grouped by:

```
Item Type
```

---

### Sales by Outlet Size

Grouped by:

```
Outlet Size
```

---

### Sales by Outlet Location

Grouped by:

```
Outlet Location Type
```

---

### Fat Content by Outlet

Grouped by:

```
Outlet Identifier
Item Fat Content
```

---

### Sales by Outlet Establishment Year

Grouped by:

```
Outlet Establishment Year
```

---

### Metrics by Outlet Type

Grouped by:

```
Outlet Type
```

---

# 💾 Writing Data to PostgreSQL

The **Output Data Tool** in Alteryx was used to store transformed data into PostgreSQL tables.

Output configuration example:

```
Connection Type: ODBC
Database: blinkit_sales
Write Mode: Append Existing
```

Each summarized dataset was written to its corresponding table.

---

# 🔍 Data Validation Queries

The following SQL queries were executed to verify the results:

```sql
SELECT * FROM public.kpi_summary;

SELECT * FROM public.sales_by_fat_content;

SELECT * FROM public.sales_by_outlet_size;

SELECT * FROM public.sales_by_location;

SELECT * FROM public.sales_by_item_type;

SELECT * FROM public.fat_content_by_outlet;

SELECT * FROM public.sales_by_establishment;

SELECT * FROM public.metrics_by_outlet_type;
```

---

# 🏗️ Project Architecture

```
Excel (Raw Data)
      ↓
Alteryx Designer (Data Transformation / ETL)
      ↓
PostgreSQL Database (Structured Analytical Tables)
```

Image - Alteryx - wokflow 
![Alteryx_Blink_it_output_page-0001](https://github.com/user-attachments/assets/85edab51-66bd-4f49-a667-f76ae974e03d)

---

# 🚀 Key Learnings

* Designing structured tables using **PostgreSQL**
* Building ETL workflows using **Alteryx Designer**
* Integrating **Excel → Alteryx → PostgreSQL**
* Performing analytical aggregations for business insights

---

# 👨‍💻 Author

**Mohan**

Data Analytics Enthusiast
Skills: Alteryx • PostgreSQL • Data Analytics
