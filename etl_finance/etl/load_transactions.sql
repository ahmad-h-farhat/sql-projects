-- load_transactions.sql
-- Step 1 of the ETL Pipeline: Load raw transaction data from CSV

-- Assuming you're using a SQL engine like PostgreSQL, DuckDB, or BigQuery for demo purposes.

-- Create the staging table (temporary or raw layer)
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

-- Simulate loading data (replace this with actual COPY command or UI import in real system)
-- For DuckDB or BigQuery, loading from CSV would look like this:
-- (Don't worry — we’ll actually test this later)

-- Example for DuckDB:
-- COPY staging_transactions FROM 'data/transactions.csv' (AUTO_DETECT TRUE);

-- For now, simulate with sample insert:
INSERT INTO staging_transactions (transaction_id, client_id, asset_id, transaction_type, quantity, price_per_unit, currency, transaction_date)
VALUES
('TX001', 'C001', 'AAPL', 'BUY', 50, 150.00, 'USD', '2024-01-10'),
('TX002', 'C002', 'GOOGL', 'SELL', 10, 2800.00, 'USD', '2024-01-12'),
('TX003', 'C003', 'TSLA', 'BUY', 20, 750.00, 'EUR', '2024-01-14'),
('TX004', 'C001', 'MSFT', 'BUY', 30, 300.00, 'GBP', '2024-01-15'),
('TX005', 'C002', 'NVDA', 'SELL', 5, 600.00, 'USD', '2024-01-20');

-- Select to verify the load
SELECT * FROM staging_transactions;
