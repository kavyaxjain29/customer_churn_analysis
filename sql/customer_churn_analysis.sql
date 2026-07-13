--Total Customers
SELECT COUNT(*) AS total_customers
FROM telco_customer_churn;

--Total Churned Customers
SELECT COUNT(*) AS churned_customers
FROM telco_customer_churn
WHERE churn_label = 'Yes';

--Churn Rate
SELECT
ROUND(
100.0 * SUM(CASE WHEN churn_label='Yes' THEN 1 ELSE 0 END)
/COUNT(*),2) AS churn_rate
FROM telco_customer_churn;

--Customers by Gender
SELECT gender,
COUNT(*) AS customers
FROM telco_customer_churn
GROUP BY gender;

--Churn by Gender
SELECT gender,
COUNT(*) AS churned
FROM telco_customer_churn
WHERE churn_label='Yes'
GROUP BY gender;

--Average Monthly Charges
SELECT
    ROUND(AVG(monthly_charges)::numeric, 2) AS avg_monthly
FROM telco_customer_churn;

--Average Total Charges
SELECT
    ROUND(AVG(total_charges)::numeric, 2) AS avg_total
FROM telco_customer_churn;

--Churn by Internet Service
SELECT
internet_service,
COUNT(*) AS churned
FROM telco_customer_churn
WHERE churn_label='Yes'
GROUP BY internet_service;

--Churn by Payment Method
SELECT
payment_method,
COUNT(*) AS churned
FROM telco_customer_churn
WHERE churn_label='Yes'
GROUP BY payment_method
ORDER BY churned DESC;

--Churn by Contract Type
SELECT
contract,
COUNT(*) AS churned
FROM telco_customer_churn
WHERE churn_label='Yes'
GROUP BY contract
ORDER BY churned DESC;

--Average Tenure by Churn
SELECT 
churn_label ,
ROUND(AVG(tenure_months),1) AS avg_tenure
FROM telco_customer_churn
GROUP BY churn_label;

--Senior Citizen Churn
SELECT
senior_citizen,
COUNT(*) AS churned
FROM telco_customer_churn
WHERE churn_label='Yes'
GROUP BY senior_citizen;

--Rank Customers by Total Charges
SELECT
customerid,
total_charges,
RANK() OVER(
ORDER BY total_charges DESC
) AS customer_rank
FROM telco_customer_churn;

--Customer Value Categories
SELECT
customerid,
total_charges,

CASE

WHEN total_charges >= 5000
THEN 'High Value'

WHEN total_charges >=2000
THEN 'Medium Value'

ELSE 'Low Value'

END AS customer_segment

FROM telco_customer_churn;

--Churn by Customer Segment
WITH customer_segments AS
(
SELECT

customerid,
churn_label,

CASE

WHEN total_charges>=5000 THEN 'High'
WHEN total_charges>=2000 THEN 'Medium'
ELSE 'Low'

END AS segment

FROM telco_customer_churn
)

SELECT

segment,
COUNT(*) AS customers,
SUM(CASE WHEN churn_label='Yes' THEN 1 ELSE 0 END) AS churned

FROM customer_segments

GROUP BY segment;