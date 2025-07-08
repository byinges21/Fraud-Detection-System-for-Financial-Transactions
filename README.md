# Fraud Detection System for Financial Transactions  

## Overview  
This project focuses on detecting fraudulent transactions using SQL-based pattern detection and a machine learning model implemented in Python. The goal is to analyze financial transaction data and classify transactions as fraudulent or legitimate.  

## Features  
- **SQL-based fraud pattern detection**: Uses queries to identify suspicious transactions based on transaction amount, frequency, and time.  
- **Machine Learning-based detection**: Trains a Random Forest model to classify transactions based on extracted features.  
- **Database integration**: Fetches data from a PostgreSQL database for analysis.  
- **Model evaluation**: Uses precision, recall, and F1-score to assess detection accuracy.  


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
![classification report screenshot](docs/classification_report.png)

## License
MIT
```
