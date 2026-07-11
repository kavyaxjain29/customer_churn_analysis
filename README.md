## 📊 Customer Churn Prediction & Analytics Dashboard

An end-to-end Customer Churn Analysis project that combines Machine Learning (Random Forest) with an interactive Power BI dashboard to identify customers who are likely to leave a telecom company and provide actionable business insights.

This project demonstrates the complete analytics workflow—from data cleaning and predictive modeling in Python to business intelligence reporting in Power BI.

## 🚀 Project Overview

Customer churn is one of the biggest challenges faced by subscription-based businesses. This project predicts customer churn using a Random Forest machine learning model and visualizes customer behavior through an interactive Power BI dashboard.

The dashboard helps business stakeholders identify high-risk customers, understand churn drivers, and make informed retention decisions.

## 🎯 Business Objective
The objective of this project is to:

* Predict customers who are likely to churn
* Identify major factors contributing to churn
* Segment customers based on churn risk
* Support data-driven customer retention strategies

  
### 📂 Dataset
Dataset: Telco Customer Churn Dataset

The dataset contains customer information including:
* Demographics
* Contract type
* Internet service
* Payment method
* Monthly charges
* Total charges
* Tenure
* Senior citizen status
* Churn status

Additional columns generated using Machine Learning:
* Predicted Churn
* Churn Probability
* Risk Category

### 🛠️ Tools & Technologies
* Python
* Pandas
* NumPy
* Scikit-learn
* Random Forest Classifier
* Power BI
* DAX
* Power Query

## ⚙️ Project Workflow

1. Data Cleaning
* Removed missing values
* Converted data types
* Encoded categorical variables
* Prepared dataset for model training
  
2. Machine Learning
* Built a Random Forest Classifier
* Predicted customer churn
* Generated churn probabilities
* Classified customers into:
* High Risk
* Medium Risk
* Low Risk
* 
3. Power BI Dashboard
Imported the prediction dataset into Power BI and created an interactive dashboard with:

* KPI Cards
* Customer segmentation
* Churn distribution
* Customer risk analysis
* Interactive filters
* Business recommendations

## 🤖 Machine Learning Model

Algorithm Used :
Random Forest Classifier

Output Generated :

* Predicted Churn (0/1)
* Churn Probability
* Risk Category

## 💡 Key Insights
* Customers with Month-to-Month contracts have the highest churn rate.
* Fiber Optic users show higher churn compared to DSL users.
* Customers with higher monthly charges are more likely to churn.
* Customers with shorter tenure exhibit greater churn risk.
* Electronic Check is the most common payment method among churned customers.
* High-risk customers can be targeted with personalized retention offers.

## 📌 Business Recommendations
* Prioritize customers with churn probability above 80%.
* Encourage long-term contracts for Month-to-Month customers.
* Offer loyalty rewards to customers with short tenure.
* Provide personalized discounts to high monthly charge customers.
* Focus customer support efforts on High Risk customer segments.

## 📷 Dashboard Preview
<img width="1535" height="863" alt="Customer churn analysis dashboard" src="https://github.com/user-attachments/assets/4a21e2ef-5813-49f2-8b1f-0a03f6b53ed9" />



