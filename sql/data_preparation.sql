## sql/data_preparation.sql
```sql
-- ---------------------------------------------------------------------------
-- 1️⃣  Create base table to hold raw transaction data
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS transactions (
    transaction_id   SERIAL PRIMARY KEY,
    user_id          INT,
    transaction_amount DECIMAL(10,2),
    transaction_time TIMESTAMP,
    is_fraud         BOOLEAN
);

-- ---------------------------------------------------------------------------
-- 2️⃣  Insert sample rows (delete or replace with real ETL in production)
-- ---------------------------------------------------------------------------
INSERT INTO transactions (user_id, transaction_amount, transaction_time, is_fraud) VALUES
    (1,  500.00, '2025-03-01 12:00:00', FALSE),
    (2, 3000.00, '2025-03-02 01:30:00',  TRUE),
    (3,   20.00, '2025-03-02 15:45:00', FALSE)
ON CONFLICT DO NOTHING;  -- idempotent seeding
```

---
