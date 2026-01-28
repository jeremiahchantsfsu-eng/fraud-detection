
<img width="1458" height="870" alt="Screenshot 2026-01-28 at 12 26 34 AM" src="https://github.com/user-attachments/assets/a108a013-8797-469a-be9c-5c8aa74c840b" />







# 💳 Fraud Risk & Financial Loss Analysis Dashboard

This dashboard analyzes transactional data to identify fraud patterns, financial exposure, and behavioral anomalies. It highlights how fraud impacts revenue, when fraudulent behavior occurs, and which transaction types carry the greatest risk.

The goal of this project is to support fraud detection strategy, risk prioritization, and financial monitoring using data-driven insights.

# 📌 Executive Summary Metrics

These KPIs give a high-level snapshot of fraud impact:

Metric	Value	Meaning
Total Revenue	$507,587,819	Total value of all processed transactions
Fraud Rate	0.8%	Percentage of transactions flagged as fraud
Fraud Cases	40	Number of confirmed fraudulent transactions
Defrauded Amount	$34,634,097	Total financial loss due to fraud

📉 Even though the fraud rate is small, the financial damage is disproportionately high, emphasizing the need for strong detection systems.

# 📈 Cumulative Loss Velocity

What it shows:
This dual-line chart tracks:

Individual fraudulent transaction amounts

The running total of financial loss over time

Insight:
Losses do not occur evenly — a few high-value events drive large jumps in financial exposure. This highlights the importance of detecting large outlier transactions early.

# 🧮 Fraud Risk Matrix

Breakdown of fraud by transaction type:

Type	Total Amount	Fraud Count	Risk Insight
TRANSFER	Highest volume	High fraud count	Most attractive channel for fraud
CASH_OUT	High	Moderate fraud count	Secondary risk area
PAYMENT / DEBIT / CASH_IN	Lower	Minimal fraud	Lower priority for monitoring

Insight:
Fraud is heavily concentrated in TRANSFER and CASH_OUT transactions. These should receive stricter monitoring and fraud rules.

# 📊 Correlation: Origin Balance vs Transaction Amount

This scatter plot compares account starting balances with transaction amounts.

What we learn:

Most normal transactions cluster at lower amounts

Fraudulent transactions appear as large outliers

A slight positive relationship shows that higher balances enable higher transaction sizes

This visualization helps identify threshold-based risk detection opportunities.

# 🕒 Financial Bleed Over Continuous Time

This area chart shows the running sum of transaction value over time.

Insight:
Fraud-related financial exposure increases steadily, not suddenly — suggesting fraud is ongoing and cumulative, not just isolated spikes. Continuous monitoring is critical.

# 🧠 How These Visuals Work Together
Visualization	Purpose
KPIs	Show business impact of fraud
Loss Velocity	Shows how fast losses accumulate
Risk Matrix	Identifies risky transaction types
Correlation Plot	Detects behavioral anomalies
Financial Bleed	Shows long-term financial exposure

Together, they tell a story:
Fraud is rare but financially severe, concentrated in certain transaction types, and often appears as large anomalies in otherwise normal activity.

# 🛠️ Tech Stack

This project follows a real-world analytics workflow:

# 🗄️ SQL

Queried raw transaction databases

Filtered fraud cases

Aggregated metrics by transaction type and time

# 🐍 Python

Data cleaning and preprocessing

Feature preparation for analysis

Handling missing values and data normalization

# 📊 Tableau

Built interactive dashboards

Designed visual storytelling elements

Created calculated fields and KPIs

Developed trend and anomaly visualizations

# 🎯 Business Recommendations

Based on the analysis:

Increase monitoring on TRANSFER transactions

Implement real-time alerts for high-value transactions

Apply behavioral anomaly detection models

Strengthen fraud detection during low-activity hours

Use balance-based risk thresholds for additional fraud scoring

# 🚀 Project Outcome

This dashboard transforms raw transaction data into actionable insights that help organizations:

✔ Reduce financial loss
✔ Detect fraud earlier
✔ Focus monitoring on high-risk transaction types
✔ Understand behavioral patterns behind fraudulent activity
