# 🏥 Healthcare Risk Stratification System

A complete end-to-end Healthcare Risk Stratification project that predicts whether a patient is at **High Risk** or **Low Risk** based on healthcare attributes. This project demonstrates the complete Data Analytics and Machine Learning workflow using **SQL, Python, Machine Learning, and Streamlit**.

---

## 📌 Project Overview

Healthcare providers collect massive amounts of patient data every day. Identifying high-risk patients early helps hospitals improve patient care, optimize resource allocation, and reduce healthcare costs.

This project performs:

- Database creation using SQL
- Data extraction and analysis
- Data preprocessing
- Machine Learning model development
- Risk prediction
- Streamlit web application deployment

---

## 🎯 Project Objectives

- Build a healthcare database using SQL
- Analyze patient healthcare records
- Perform data preprocessing and feature engineering
- Train a Machine Learning model for risk prediction
- Predict whether a patient belongs to High Risk or Low Risk category
- Deploy the prediction model using Streamlit

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|----------|
| SQL | Database Creation & Queries |
| Python | Data Processing |
| Pandas | Data Manipulation |
| Scikit-Learn | Machine Learning |
| Joblib | Model Serialization |
| Streamlit | Web Application |
| Jupyter Notebook | Model Development |

---

# 📂 Project Structure

```
Healthcare_Risk_Stratification/
│
├── Healthcare_project_sql.sql
│
├── Healthcare_risk_app/
│   ├── patients.csv
│   ├── diagnoses.csv
│   ├── labs.csv
│   ├── outcomes.csv
│   ├── Risk_model.py
│   └── Risk_model1.ipynb
│
└── README.md
```

---

# 📊 Dataset

The project uses multiple healthcare datasets:

### Patients
Contains demographic and hospitalization details.

Features include:

- Patient ID
- Name
- Age
- Gender
- Length of Stay
- Treatment Cost

---

### Diagnoses

Contains patient diagnosis information.

Examples:

- Diabetes
- Hypertension
- Heart Disease
- Pneumonia

---

### Laboratory Reports

Contains patient laboratory test values.

Examples:

- Blood Sugar
- Cholesterol
- Hemoglobin

---

### Outcomes

Stores treatment outcomes for each patient.

Examples:

- Recovered
- Improved
- Critical

---

# ⚙️ Project Workflow

## Step 1
Create healthcare database using SQL.

↓

## Step 2
Import CSV files into SQL tables.

↓

## Step 3
Perform SQL joins and data extraction.

↓

## Step 4
Clean and preprocess data using Python.

↓

## Step 5
Train Machine Learning classification model.

↓

## Step 6
Evaluate model performance.

↓

## Step 7
Deploy prediction model using Streamlit.

---

# 🤖 Machine Learning

The model predicts whether a patient is:

- 🟢 Low Risk
- 🔴 High Risk

### Input Features

- Age
- Length of Stay
- Treatment Cost

### Output

- Risk Category
- Prediction Probability

---

# 🚀 Running the Project

## Clone Repository

```bash
git clone https://github.com/yourusername/Healthcare_Risk_Stratification.git
```

---

## Install Dependencies

```bash
pip install pandas
pip install scikit-learn
pip install streamlit
pip install joblib
```

or

```bash
pip install -r requirements.txt
```

---

## Run Streamlit App

```bash
streamlit run Risk_model.py
```

---

# 📈 Sample Prediction

Input

```
Age = 62
Length of Stay = 8
Treatment Cost = 35000
```

Output

```
Risk Prediction : High Risk

Probability : 0.87
```

---

# 💡 Future Enhancements

- Deploy on Streamlit Cloud
- Add Power BI Dashboard
- Connect with MySQL/PostgreSQL database
- Improve model accuracy
- Add Authentication
- Include additional healthcare features
- Real-time patient monitoring

---

# 📚 Skills Demonstrated

- SQL
- Data Cleaning
- Data Analysis
- Machine Learning
- Feature Engineering
- Model Deployment
- Streamlit
- Python Programming
- Healthcare Analytics

---

# 👨‍💻 Author

**Md Mustafa Ansari**

Data Analyst | Python | SQL | Machine Learning | Power BI

LinkedIn: *https://www.linkedin.com/in/mdmustafaansari*

GitHub: *https://github.com/Mustafa2420?tab=repositories*

---

## ⭐ If you found this project useful, please consider giving it a star.