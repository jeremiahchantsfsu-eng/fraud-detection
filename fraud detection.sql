select * from [Fraud detection]
--BIG PICTURE PROMPTS
--What is the total volume of money processed in this dataset?
select 
sum(amount) as total_revenue
from [Fraud detection]


--What is the breakdown of transaction types?
select 
[type],
count(*) as total_type
from [Fraud detection]
group by [type]
order by total_type desc;

--Which transaction type handles the highest total value of money and fraud cases?
select 
[type],
sum(amount) as total_revenue,
count(*) as trans_count,
sum (cast(isfraud as int )) as fraud_cases
from [fraud detection]
group by [type]
order by total_revenue desc;

--How many unique origin accounts are there compared to destination accounts?
select 
count(distinct nameOrig) as uniqueorigins,
count(distinct nameDest) as uniquedestinations
from [Fraud detection];

-- FRAUD DETECTION PROMPTS
--
--Prompt: What is the actual fraud rate in this dataset?
select 
sum(isFraud) as total_fraud,
count(*) as total_transaction,
(avg(cast(isfraud as float)) * 100) as fraud_rate
from [fraud detection];

-- Which transaction types are actually associated with fraud?
SELECT
[type],
count(*) as fraud_count
from [Fraud detection]
where isfraud = 1
group by [type]
order by fraud_count;

--Prompt: What is the average amount of a fraudulent transaction vs. a legitimate one?
select 
isfraud,
avg(amount) as average_amount_fraud
from [Fraud detection]
group by isFraud;

--How often does the system’s "flag" (isFlaggedFraud) actually match a real fraud case?
select 
isfraud, 
isflaggedfraud,
count(*) as COUNT
from [Fraud detection]
group by isFlaggedFraud, isFraud;

--BEHAVIORAL ANOMALIES

--Are there any accounts that appear as both an origin and a destination

select distinct a.nameOrig
from [Fraud detection] a 
join [Fraud detection] b on a.nameorig =b.nameDest;


--vanishing fraud
  SELECT * FROM [Fraud detection]
WHERE isFraud = 1 
  AND amount > 0 
  AND oldbalanceDest = 0 
  AND newbalanceDest = 0;

--Transactions where the account was completely emptied:
select  
[type],
count(*) as total_trans,
sum(amount) as total_emptied,
avg(amount) as avg_per_trans
from [Fraud detection]
where newbalanceOrig = 0
and oldbalanceOrg > 0
group by [type]
order by total_emptied desc;

--Identify transactions where the destination balance did not increase after a transfer (Suspicious):

select * from [Fraud detection]
where [type] in ('transfer', 'cash_out')
and oldbalanceDest = 0 and newbalanceDest = 0
and amount > 0;

--High-value transfers (over 100k):
select * from [Fraud detection]
where amount > 100000 and [type] = 'transfer';

--Find the hour (step) with the most transactions: am
select  step,
(step % 24) as hour_of_day,
 count (*) as volume
from [Fraud detection]
group by step
order by volume desc;

--Average original balance of a fraud victim:
select
avg(oldbalanceorg) as avg_fraud_beg_balance
from [Fraud detection]
where isfraud = 1;

SELECT * FROM [Fraud detection];

