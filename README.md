# 💼 Financial Transactions Data Engineering Project

This project simulates an end-to-end **ETL pipeline** for financial transaction data, using SQL to model a real-world use case in a business intelligence and analytics environment. It includes raw data ingestion, cleaning & transformation, and dimensional modeling with Slowly Changing Dimensions (SCD Type 2).

---

## 🚀 Project Structure## 🧠 Business Context 

Imagine a financial firm managing asset transactions from global clients. This project reflects typical BI/data engineering work in such environments:
- Tracking client portfolio changes
- Calculating revenue in a standardized currency
- Preserving historical versions of client profiles
- Preparing clean, analytical data for dashboards or KPIs

---

## 🛠️ Tech Stack

- SQL (PostgreSQL/DuckDB-style)
- GitHub (for versioning and showcasing)
- CSV-based mock datasets (to be uploaded in /data)

---

## 🧹 ETL Pipeline Overview

| Step                     | Description                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| load_transactions.sql | Loads raw transactions data from CSV into a staging table                   |
| clean_transactions.sql| Cleans data, handles NULLs, standardizes formats, and converts currency     |
| scd_clients.sql        | Implements SCD Type 2 for tracking historical changes in client profiles    |

---

## 📊 Key Features

- 💰 Currency conversion (EUR, GBP → USD)
- 🧽 Data validation and filtering
- 🧾 Historical tracking of client changes
- 🏗️ Modular and reusable SQL logic
- 📁 Realistic project structure ready for extension

---

## 🔜 Coming Soon

- Upload of realistic sample data in /data/
- Optional extension: analytics KPIs (e.g., revenue by client, daily trading volume, etc.)
- Visualization layer using Tableau 


---

> ✅ This project is designed to simulate real-world data engineering tasks using accessible tools and clean SQL. Great for recruiters, hiring managers, and BI professionals.
