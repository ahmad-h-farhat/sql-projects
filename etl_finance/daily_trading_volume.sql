-- daily_trading_volume.sql
-- KPI: Daily trading volume in USD

SELECT
    transaction_date,
    ROUND(SUM(amount_usd), 2) AS daily_volume_usd
FROM cleaned_transactions
GROUP BY transaction_date
ORDER BY transaction_date;
