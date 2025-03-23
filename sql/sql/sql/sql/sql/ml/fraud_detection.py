# ml/fraud_detection.py: Machine Learning for Fraud Detection
import pandas as pd
import psycopg2
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report

# Database connection
conn = psycopg2.connect(
    dbname='your_db', user='your_user', password='your_password', host='your_host', port='your_port'
)

# Load transaction data
query = "SELECT user_id, transaction_amount, hour_of_day, high_value, is_fraud FROM transactions;"
df = pd.read_sql(query, conn)
conn.close()

# Prepare features and target variable
X = df[['transaction_amount', 'hour_of_day', 'high_value']]
y = df['is_fraud']
X = pd.get_dummies(X, columns=['high_value'])

# Split dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train model
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Evaluate model
y_pred = model.predict(X_test)
print(classification_report(y_test, y_pred))
