-- load_transactions.sql
-- Step 1 of the ETL Pipeline: Load raw transaction data from CSV into staging table

DROP TABLE IF EXISTS staging_transactions;

CREATE TABLE staging_transactions (
    transaction_id     VARCHAR(10),
    client_id          VARCHAR(10),
    asset_id           VARCHAR(10),
    transaction_type   VARCHAR(10),
    quantity           INTEGER,
    price_per_unit     DECIMAL(10,2),
    currency           VARCHAR(5),
    transaction_date   DATE
);

-- Load data from CSV (for DuckDB)
COPY staging_transactions
FROM 'etl_finance/data/transactions.csv'
(AUTO_DETECT TRUE, HEADER TRUE);

-- Optional: Inspect loaded records
SELECT * FROM staging_transactions LIMIT 10;
