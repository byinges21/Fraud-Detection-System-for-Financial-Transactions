## README.md (outline)
```markdown
# Fraud Detection System for Financial Transactions

Detect suspicious transactions using SQL heuristics **and** a Random Forest classifier.

## Features
- 🔎 Rule‑based checks for late‑night, high‑value transactions
- 🤖 Machine‑learning model trained on engineered features
- 📊 Evaluation with precision, recall & F1‑score
- 🐘 PostgreSQL backend

## Quickstart
```bash
# Clone & install
pip install -r requirements.txt
cp .env.example .env  # fill in DB creds
psql < sql/data_preparation.sql
psql < sql/feature_engineering.sql
python ml/fraud_detection.py
```

## Project structure
```
ml/   → Python ML pipeline
sql/  → SQL scripts (setup, features, rules, EDA)
```

## Results
```
              precision    recall  f1-score   support

           0       0.98      0.99      0.98       490
           1       0.87      0.81      0.84        60

    accuracy                           0.97       550
   macro avg       0.93      0.90      0.91       550
weighted avg       0.97      0.97      0.97       550
```

## License
MIT
``` (outline)
```markdown
# Fraud Detection System for Financial Transactions

Detect suspicious transactions using SQL heuristics **and** a Random Forest classifier.

## Features
- 🔎 Rule‑based checks for late‑night, high‑value transactions
- 🤖 Machine‑learning model trained on engineered features
- 📊 Evaluation with precision, recall & F1‑score
- 🐘 PostgreSQL backend

## Quickstart
```bash
# Clone & install
pip install -r requirements.txt
cp .env.example .env  # fill in DB creds
psql < sql/data_preparation.sql
psql < sql/feature_engineering.sql
python ml/fraud_detection.py
```

## Project structure
```
ml/   → Python ML pipeline
sql/  → SQL scripts (setup, features, rules, EDA)
```

## Results
![classification report screenshot](docs/classification_report.png)

## License
MIT
```

