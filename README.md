# Fraud Detection System for Financial Transactions  

## Overview  
This project focuses on detecting fraudulent transactions using SQL-based pattern detection and a machine learning model implemented in Python. The goal is to analyze financial transaction data and classify transactions as fraudulent or legitimate.  

## Features  
- **SQL-based fraud pattern detection**: Uses queries to identify suspicious transactions based on transaction amount, frequency, and time.  
- **Machine Learning-based detection**: Trains a Random Forest model to classify transactions based on extracted features.  
- **Database integration**: Fetches data from a PostgreSQL database for analysis.  
- **Model evaluation**: Uses precision, recall, and F1-score to assess detection accuracy.  

## Project Structure  
├── sql/
│ ├── data_preparation.sql # Create tables and insert sample data
│ ├── eda.sql # Exploratory data analysis (EDA)
│ ├── feature_engineering.sql # Feature engineering for fraud detection
│ ├── fraud_detection.sql # SQL-based fraud detection rules
│ ├── evaluation.sql # Evaluate SQL-based fraud detection
│
├── ml/
│ ├── fraud_detection.py 
# Machine learning model for fraud detection
│
── README.md 
# Project documentation
