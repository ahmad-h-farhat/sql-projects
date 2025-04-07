# 💼 Financial Transactions Data Engineering Project

This project simulates an end-to-end **ETL pipeline** for financial transaction data, using SQL to model a real-world use case in a business intelligence and analytics environment. It includes raw data ingestion, cleaning & transformation, and dimensional modeling with Slowly Changing Dimensions (SCD Type 2).

---

## 🚀 Project Structure

etl_finance/ ├── load_transactions.sql → Load raw CSV into staging ├── clean_transactions.sql → Clean and standardize data (currency normalization, filtering, etc.) ├── scd_clients.sql → Simulate Slowly Changing Dimensions (Type 2) for client profile tracking ├── revenue_by_client.sql → KPI: Total revenue per client in USD └── data/ └── transactions.csv → Mock source transaction data

---

## 🧠 Business Context

Imagine a financial firm managing asset transactions from global clients. This project reflects typical BI/data engineering work in such environments:
- Tracking client portfolio changes
- Calculating revenue in a standardized currency
- Preserving historical versions of client profiles
- Preparing clean, analytical data for dashboards or KPIs

---

## 🛠️ Tech Stack

- SQL (PostgreSQL / DuckDB-style syntax)
- GitHub (for versioning and showcasing)
- CSV-based mock datasets (in `/data` folder)

---

## 🧹 ETL Pipeline Overview

| Step                     | Description                                                                 |
|--------------------------|-----------------------------------------------------------------------------|
| `load_transactions.sql` | Loads raw transactions data from CSV into a staging table                   |
| `clean_transactions.sql`| Cleans data, handles NULLs, standardizes formats, and converts currency     |
| `scd_clients.sql`        | Implements SCD Type 2 for tracking historical changes in client profiles    |

---

## 📈 KPI Analytics

| Script                   | Description                                                  |
|--------------------------|--------------------------------------------------------------|
| `revenue_by_client.sql` | Shows total revenue per client in USD                        |
| *(coming soon)*         | Daily transaction volume, portfolio breakdown, client rankings|

---

## 📁 Data Sample

✅ Uploaded mock transaction data: `/data/transactions.csv`  
Includes client IDs, transaction dates, asset amounts, and currency types.
