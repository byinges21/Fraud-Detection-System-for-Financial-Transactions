## sql/feature_engineering.sql
```sql
-- ---------------------------------------------------------------------------
-- Add engineered columns for model input & SQL rules
-- ---------------------------------------------------------------------------
ALTER TABLE transactions
    ADD COLUMN IF NOT EXISTS hour_of_day INT,
    ADD COLUMN IF NOT EXISTS high_value BOOLEAN;

UPDATE transactions
SET
    hour_of_day = EXTRACT(HOUR FROM transaction_time),
    high_value  = transaction_amount > 1000;
```

---
