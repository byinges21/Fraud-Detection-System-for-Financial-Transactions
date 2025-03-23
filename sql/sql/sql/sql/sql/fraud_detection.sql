-- Detect fraudulent transactions based on high value and late-night transactions
SELECT *
FROM transactions
WHERE (high_value = TRUE OR hour_of_day BETWEEN 0 AND 5)
AND is_fraud = TRUE;
