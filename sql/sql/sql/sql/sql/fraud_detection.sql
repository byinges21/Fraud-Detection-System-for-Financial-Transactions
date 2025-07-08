---

## sql/fraud_detection.sql
```sql
/*
Rule‑based fraud detection:
Returns rows that are either high‑value OR occurred between 00:00–05:59 *and*
were actually labelled fraudulent.  Useful to audit rule recall vs ground truth.
*/
SELECT *
FROM   transactions
WHERE  (high_value = TRUE OR hour_of_day BETWEEN 0 AND 5)
  AND  is_fraud = TRUE;
```

---
