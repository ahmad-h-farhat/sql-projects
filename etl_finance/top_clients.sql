-- top_clients.sql
-- KPI: Top 5 clients by total revenue in USD

SELECT
    client_id,
    SUM(amount_usd) AS total_revenue_usd
FROM cleaned_transactions
GROUP BY client_id
ORDER BY total_revenue_usd DESC
LIMIT 5;
