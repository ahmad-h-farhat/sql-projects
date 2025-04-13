-- top_clients_by_revenue.sql
-- KPI: Top clients ranked by total revenue in USD

SELECT
    client_id,
    ROUND(SUM(amount_usd), 2) AS total_revenue_usd
FROM clean_transactions
GROUP BY client_id
ORDER BY total_revenue_usd DESC
LIMIT 10;
