
---

## ml/fraud_detection.py
```python
"""Machine‑learning pipeline for fraud detection.
Assumes the **transactions** table has already been populated and feature‑engineered.
The script pulls data from PostgreSQL, trains a RandomForest model, and prints a
classification report. All database credentials are read from environment variables.
"""
import os
import pandas as pd
import psycopg2
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report

# ---------------------------------------------------------------------------
# 1️⃣  Database connection parameters (never hard‑code secrets!)
# ---------------------------------------------------------------------------
DB_NAME = os.getenv("PG_DBNAME")
DB_USER = os.getenv("PG_USER")
DB_PASSWORD = os.getenv("PG_PASSWORD")
DB_HOST = os.getenv("PG_HOST")
DB_PORT = os.getenv("PG_PORT", "5432")

conn = psycopg2.connect(
    dbname=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD,
    host=DB_HOST,
    port=DB_PORT,
)

# ---------------------------------------------------------------------------
# 2️⃣  Load feature‑engineered data
# ---------------------------------------------------------------------------
query = """
SELECT
    transaction_amount,
    hour_of_day,
    high_value,
    is_fraud
FROM transactions;
"""
df = pd.read_sql(query, conn)
conn.close()

# ---------------------------------------------------------------------------
# 3️⃣  Prepare design matrix and target vector
# ---------------------------------------------------------------------------
X = df[["transaction_amount", "hour_of_day", "high_value"]]
X = pd.get_dummies(X, columns=["high_value"], drop_first=True)  # Boolean → 0/1

y = df["is_fraud"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42, stratify=y
)

# ---------------------------------------------------------------------------
# 4️⃣  Train & evaluate model
# ---------------------------------------------------------------------------
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

y_pred = model.predict(X_test)
print(classification_report(y_test, y_pred))
```

---
