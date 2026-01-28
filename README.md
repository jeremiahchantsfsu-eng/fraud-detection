# 📊 Fraud Detection & Transaction Risk Dashboard

This dashboard analyzes financial transaction data to uncover fraud patterns, behavioral anomalies, and financial risk exposure. The goal of this project is to identify how fraudulent activity impacts revenue and to understand when, how, and where suspicious transactions occur.

# 💰 Key Business Impact Metrics
Metric	Value	Insight
Total Revenue	$507,587,819	Overall transaction volume processed
Fraud Rate	0.8%	Small percentage, but high financial impact
Fraud Cases	40	Confirmed fraudulent transactions detected
Defrauded Amount	$34,634,097	Direct financial loss from fraud

Even with a low fraud rate, the financial loss is significant, highlighting how a small number of high-value fraudulent transactions can drive major impact.

# 📈 Financial Bleed Over Time

The running total chart shows how financial exposure steadily increases over time, suggesting fraud is not isolated to a single spike but represents a continuous leakage. This signals the need for real-time monitoring systems rather than periodic reviews.

# 🔎 Correlation: Origin Account Balance vs Transaction Amount

This scatter plot explores whether accounts with higher balances are responsible for larger transactions.

Insights:

Most transactions cluster at low-to-mid balances

Fraudulent transactions (darker points) tend to appear as outliers

A weak positive trend suggests that higher starting balances enable higher-risk transactions

Large, abnormal transaction amounts stand out clearly from normal behavior

This chart helps fraud teams identify threshold-based anomaly detection opportunities.

# ⏰ Temporal Attack Window

This visual highlights when fraudulent activity is most likely to occur.

Findings:

Fraud clusters in early morning hours

Both TRANSFER and CASH_OUT transactions show vulnerability during low-activity periods

Off-hour transaction monitoring should be prioritized

Fraudsters often operate when oversight is reduced — this pattern supports implementing time-based risk scoring.

# 🔄 Transfer vs Cash Out Comparison

Transfers account for a larger share of suspicious value compared to cash-out transactions.

Type	Fraud Exposure Insight
TRANSFER	Higher total value, more attractive for large-scale fraud
CASH_OUT	Still risky, but lower aggregate exposure

This indicates transfer transactions should carry stricter fraud controls.

# 🌪 Transaction Entropy Analysis

The “Transaction Entropy” scatter visualizes transaction amounts against time.

Key Observations:

Most activity follows predictable patterns

Fraud cases appear as high-amount anomalies outside normal clusters

A few extreme transactions significantly exceed normal behavior

This supports the use of behavioral anomaly detection models.

# 🛠️ Tech Stack

This project combines data engineering, analysis, and visualization tools used in real-world analytics workflows:

Python → Data cleaning, preprocessing, and preparation

SQL → Querying and extracting relevant transaction data

Tableau → Data visualization, dashboard design, and storytelling

Together, these tools were used to transform raw financial transaction data into a clear, interactive fraud analysis dashboard that highlights risk patterns and business impact.

# 🧠 Skills Demonstrated

Fraud analytics & risk assessment

Data visualization storytelling

Anomaly detection concepts

Financial impact analysis

Dashboard design for business decision-making

# 🎯 Business Recommendations

Based on the analysis:

Implement real-time monitoring for high-value transfers

Apply stricter controls during early morning hours

Use balance-based transaction thresholds for risk scoring

Prioritize monitoring of TRANSFER-type transactions

Deploy anomaly detection models to catch outlier transaction behavior

This project demonstrates how data visualization and analytical thinking can transform raw financial data into actionable fraud prevention strategies.
