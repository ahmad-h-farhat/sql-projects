-- cleaned_transactions.sql
-- Step 2 of the ETL Pipeline: Clean and standardize transaction data

DROP TABLE IF EXISTS cleaned_transactions;

CREATE TABLE cleaned_transactions AS
WITH base AS (
    SELECT
        transaction_id,
        client_id,
        asset_id,
        UPPER(transaction_type) AS transaction_type,
        quantity,
        price_per_unit,
        quantity * price_per_unit AS transaction_value_local,
        currency,
        DATE(transaction_date) AS transaction_date
    FROM staging_transactions
    WHERE 
        transaction_id IS NOT NULL
        AND client_id IS NOT NULL
        AND asset_id IS NOT NULL_
