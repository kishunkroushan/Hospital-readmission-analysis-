# End-to-End Healthcare Analytics: Hospital Readmission Prediction

## Project Overview
Hospital readmissions are a major challenge for healthcare systems because they increase costs and indicate potential gaps in patient care. Predicting which patients are at high risk of readmission allows hospitals to intervene early and improve treatment outcomes.

This project builds an end-to-end healthcare analytics pipeline that combines SQL data preparation, machine learning modeling, and interactive business intelligence dashboards to analyze and predict patient readmission risk.

The final output is an interactive Power BI dashboard that provides insights into patient demographics, clinical factors, and predictive model performance.

---

# Project Objectives

The main objectives of this project were:

- Analyze patterns behind hospital readmissions
- Identify high-risk patient groups
- Build a machine learning model to predict readmission probability
- Visualize key insights using an interactive dashboard
- Demonstrate a complete analytics workflow from database to decision support

---

# Project Workflow

## 1.Data Extraction & Feature Engineering (SQL)

The raw healthcare dataset was first analyzed and prepared using PostgreSQL.

Key tasks included:

- Joining multiple clinical tables
- Handling missing values
- Creating engineered features
- Aggregating patient statistics

Example features created:

- `stay_duration` – number of days patient stayed in hospital  
- `medication_count` – total medications administered  
- `prior_visits` – number of previous hospital visits  
- `emergency_visits` – emergency department visits in the past year  

These transformations ensured the dataset was suitable for predictive modeling.

---

## 2️.Exploratory Data Analysis & Modeling (Python)

Data exploration and machine learning were performed in Google Colab using Python.

Libraries used:

- Pandas for data manipulation
- Scikit-learn for machine learning
- Matplotlib for visualization

Steps included:

- Feature exploration
- Data preprocessing
- Train/test split
- Model training
- Model evaluation

A Random Forest Classifier was used due to its ability to capture complex relationships in healthcare data.

---

## 3️.Model Evaluation

The model was evaluated using standard classification metrics.

Key evaluation metrics:

| Metric | Value |
|------|------|
| ROC-AUC | 0.66 |
| Accuracy | 62.44% |
| Precision | 0.62 |
| Recall | 0.51 |

These metrics provide insight into how well the model distinguishes between readmitted and non-readmitted patients.

A confusion matrix was also used to analyze:

- True Positives
- False Positives
- True Negatives
- False Negatives

---

## 4️.Interactive Dashboard (Power BI)

The results were visualized using Microsoft Power BI, creating a three-page interactive dashboard.

### Page 1 – Executive Overview

Provides a high-level summary for hospital administrators.

Key visuals include:

- Total patients analyzed
- Overall readmission rate
- Average hospital stay duration
- Readmission trends by length of stay
- Medication distribution
- Readmission rate by age group

---

### Page 2 – Clinical Insights

Explores clinical and demographic patterns affecting readmissions.

Insights include:

- Patient distribution across age groups
- Specialty-based readmission trends
- Medication intensity analysis
- Hospital stay impact on readmission risk

---

### Page 3 – Predictive Model Analysis

Evaluates the machine learning model performance.

Key components:

- ROC AUC Score
- Precision and Recall metrics
- Confusion Matrix visualization
- Predicted readmission risk distribution
- Probability distribution of predictions
- Predicted risk by patient age group

This page demonstrates how predictive analytics can support data-driven healthcare decisions.

---

# Key Insights

The analysis revealed several important patterns:

- Patients with multiple emergency visits have significantly higher readmission risk.
- Longer hospital stays are associated with increased probability of readmission.
- Older age groups show slightly elevated predicted risk levels.
- The majority of patients fall into the medium-risk prediction category.

These insights could help healthcare providers identify patients who may require additional monitoring after discharge.

---

# Technical Stack

| Category | Tools |
|------|------|
| Database | PostgreSQL |
| Data Processing | Pandas |
| Machine Learning | Scikit-learn |
| Visualization | Power BI |
| Environment | Google Colab |

---



# Future Improvements

Possible extensions of this project include:

- Hyperparameter tuning to improve model performance
- Testing additional models such as Gradient Boosting or XGBoost
- Incorporating more clinical variables
- Deploying the model as an API for real-time predictions

---

# Learning Outcomes

This project demonstrates practical experience in:

- Healthcare data analysis
- SQL-based data preparation
- Machine learning modeling
- Model evaluation and interpretation
- Business intelligence dashboard design

---

# Author

Kishunk Roushan  
Healthcare Data Analytics Project  
End-to-End Predictive Analytics Pipeline
