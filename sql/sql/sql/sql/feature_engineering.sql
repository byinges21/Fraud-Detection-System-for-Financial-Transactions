-- Extract hour of transaction
ALTER TABLE transactions ADD COLUMN hour_of_day INT;
UPDATE transactions SET hour_of_day = EXTRACT(HOUR FROM transaction_time);

-- Flag high-value transactions
ALTER TABLE transactions ADD COLUMN high_value BOOLEAN;
UPDATE transactions SET high_value = (transaction_amount > 1000);
