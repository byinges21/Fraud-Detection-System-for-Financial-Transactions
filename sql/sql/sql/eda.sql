-- Check for missing values
SELECT column_name, COUNT(*) - COUNT(column_name) AS missing_values
FROM transactions
GROUP BY column_name;

-- Fraud rate in transactions
SELECT is_fraud, COUNT(*) AS count
FROM transactions
GROUP BY is_fraud;
