## sql/eda.sql
```sql
-- 1️⃣  Missing‑value heatmap (count Nulls per column)
SELECT
    column_name,
    (SELECT COUNT(*) FROM transactions) - COUNT(column_name) AS missing_values
FROM information_schema.columns
LEFT JOIN LATERAL (
    SELECT NULL AS placeholder  -- dummy for cross join
) sub ON TRUE
WHERE table_name = 'transactions'
GROUP BY column_name
ORDER BY missing_values DESC;

-- 2️⃣  Fraud class distribution
SELECT is_fraud, COUNT(*) AS count
FROM   transactions
GROUP  BY is_fraud;
```

---
