-- clean_transactions.sql
-- Step 2 of the ETL Pipeline: Clean and transform transaction data

-- Drop old clean table if it exists
DROP TABLE IF EXISTS clean_transactions;

-- Create new clean table with transformations applied
CREATE TABLE clean_transactions AS
SELECT
    transaction_id,
    client_id,
    asset_id,
    UPPER(transaction_type) AS transaction_type, -- standardize to upper case
    quantity,
    price_per_unit,
    quantity * price_per_unit AS transaction_value_local,

    -- Currency conversion to USD (example rates)
    CASE 
        WHEN currency = 'USD' THEN quantity * price_per_unit
        WHEN currency = 'EUR' THEN quantity * price_per_unit * 1.10
        WHEN currency = 'GBP' THEN quantity * price_per_unit * 1.30
        ELSE NULL
    END AS transaction_value_usd,

    'USD' AS standard_currency,
    DATE(transaction_date) AS transaction_date
FROM
    staging_transactions
WHERE
    -- Exclude rows with NULLs or invalid data
    transaction_id IS NOT NULL
    AND client_id IS NOT NULL
    AND asset_id IS NOT NULL
    AND quantity > 0
    AND price_per_unit > 0;
