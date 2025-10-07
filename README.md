# 🩺 Explainable Diabetes Prediction
A machine learning project that not only predicts the likelihood of diabetes but also explains why the model made its prediction. Built with a focus on transparency and interpretability using SHAP.

https://img.shields.io/badge/Python-3.8%252B-blue
https://img.shields.io/badge/Scikit--learn-Learn-orange
https://img.shields.io/badge/SHAP-Explainable%2520AI-yellow
https://img.shields.io/badge/License-MIT-green

# 📖 Overview
This project tackles the critical challenge of "black box" models in healthcare AI. While many models can predict diabetes with high accuracy, their decisions are often opaque. This repository demonstrates how to build a predictive model and, more importantly, uses state-of-the-art Explainable AI (XAI) techniques to make the model's reasoning transparent and understandable for clinicians and patients.

## Key Features:

Data Preprocessing & EDA: Comprehensive cleaning and exploratory data analysis of the Pima Indians Diabetes Dataset.

Model Training: Implementation and evaluation of multiple machine learning classifiers.

Model Explainability: In-depth interpretation of predictions using SHAP (SHapley Additive exPlanations).

Web Application: An interactive Streamlit app that allows users to input patient data and get both a prediction and a visual explanation.

# 📊 Dataset
The project uses the Pima Indians Diabetes Database, a well-known dataset from the National Institute of Diabetes and Digestive and Kidney Diseases.

Objective: To predict whether a patient has diabetes (binary classification: 1 = Yes, 0 = No).

Features: The dataset includes diagnostic measurements such as:

Pregnancies

Glucose (Plasma glucose concentration)

BloodPressure (Diastolic blood pressure)

SkinThickness (Triceps skin fold thickness)

Insulin (2-Hour serum insulin)

BMI (Body Mass Index)

DiabetesPedigreeFunction (A function that scores the likelihood of diabetes based on family history)

Age
# 🚀 Quick Start
1. Prerequisites
Ensure you have Python 3.8+ installed on your system.

2. Installation
Clone the repository and install the required dependencies.

bash
## Clone the repo
git clone https://github.com/WandilePhinzi/explainable-diabetes-prediction.git

## Navigate into the project directory
cd explainable-diabetes-prediction

## Install dependencies
pip install -r requirements.txt
3. Running the Project
You can explore the project in two ways:

Option A: Jupyter Notebook
Run the notebooks/diabetes_prediction.ipynb (or the main analysis notebook) to walk through the entire data science pipeline step-by-step, from EDA to model explanation.

Option B: Interactive Web App
Launch the Streamlit web application for an interactive experience.

## bash
streamlit run app/app.py
This will open a browser window where you can input feature values and get instant predictions with explanations.

# 🗂️ Project Structure
text
explainable-diabetes-prediction/
│
├── data/
│   └── diabetes.csv                 # Original dataset
├── notebooks/
│   └── diabetes_prediction.ipynb    # Main Jupyter notebook for analysis
├── app/
│   └── app.py                       # Streamlit application code
├── models/
│   └── best_model.pkl               # Saved trained model (if available)
├── requirements.txt                  # Python dependencies
└── README.md                        # This file
# 🔍 Model Explainability in Action
This project highlights the power of XAI. For any given prediction, you can generate explanations that answer:

"Which factors were most influential in this prediction?"

"How did a specific feature, like Glucose level, push the prediction towards 'Diabetic' or 'Non-Diabetic'?"

SHAP Explanations
Summary Plot: Provides a global view of feature importance.

Force Plot: Shows a local explanation for a single prediction, visualizing how each feature contributed to the output.

# 📈 Results
The project compares several models (e.g., Logistic Regression, Random Forest, XGBoost) and selects the best performer based on metrics like Accuracy, Precision, Recall, and F1-Score. The final model achieves robust performance while maintaining a focus on interpretability.

Best Model: [e.g., Random Forest Classifier]

Accuracy: [e.g., 78%]

Key insights from explainability analysis show that Glucose level, BMI, and Age are consistently the top contributors to the model's predictions.

# 👨‍💻 Author
Wandile Phinzi

GitHub: @WandilePhinzi

LinkedIn: Wandile Phinzi

# 🙏 Acknowledgments
The dataset providers: National Institute of Diabetes and Digestive and Kidney Diseases.

The creators of SHAP and LIME for their invaluable explainability libraries.

The Streamlit team for enabling the rapid creation of interactive web apps.
