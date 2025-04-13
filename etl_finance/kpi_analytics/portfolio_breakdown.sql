-- portfolio_breakdown.sql
-- KPI: Portfolio breakdown by asset type in USD

SELECT
    asset_type,
    ROUND(SUM(amount_usd), 2) AS total_investment_usd,
    ROUND(SUM(amount_usd) * 100.0 / SUM(SUM(amount_usd)) OVER (), 2) AS percentage_of_portfolio
FROM clean_transactions
GROUP BY asset_type
ORDER BY total_investment_usd DESC;
