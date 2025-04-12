-- daily_trading_volume.sql
-- This query calculates total transaction volume per day in USD

WITH converted AS (
  SELECT 
    transaction_id,
    client_id,
    transaction_date,
    amount,
    currency,
    CASE 
      WHEN currency = 'EUR' THEN amount * 1.1
      WHEN currency = 'GBP' THEN amount * 1.25
      ELSE amount
    END AS amount_usd
  FROM clean_transactions
)

SELECT 
  transaction_date,
  ROUND(SUM(amount_usd), 2) AS daily_volume_usd
FROM converted
GROUP BY transaction_date
ORDER BY transaction_date;
