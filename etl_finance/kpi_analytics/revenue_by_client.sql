-- revenue_by_client.sql
-- Calculates total revenue (USD) per client from cleaned transactions

SELECT
    client_id,
    COUNT(*) AS total_transactions,
    SUM(amount_usd) AS total_revenue_usd,
    ROUND(AVG(amount_usd), 2) AS avg_transaction_value_usd
FROM
    clean_transactions
GROUP BY
    client_id
ORDER BY
    total_revenue_usd DESC;
