-- arpu.sql
-- KPI: Average Revenue Per User (ARPU) in USD

SELECT
    ROUND(SUM(amount_usd) * 1.0 / COUNT(DISTINCT client_id), 2) AS arpu_usd
FROM cleaned_transactions;
