#🩺 Explainable Diabetes Prediction
A machine learning project that not only predicts the likelihood of diabetes but also explains why the model made its prediction. Built with a focus on transparency and interpretability using SHAP and LIME.

https://img.shields.io/badge/Python-3.8%252B-blue
https://img.shields.io/badge/Scikit--learn-Learn-orange
https://img.shields.io/badge/SHAP-Explainable%2520AI-yellow
https://img.shields.io/badge/License-MIT-green

#📖 Overview
This project tackles the critical challenge of "black box" models in healthcare AI. While many models can predict diabetes with high accuracy, their decisions are often opaque. This repository demonstrates how to build a predictive model and, more importantly, uses state-of-the-art Explainable AI (XAI) techniques to make the model's reasoning transparent and understandable for clinicians and patients.

## Key Features:

Data Preprocessing & EDA: Comprehensive cleaning and exploratory data analysis of the Pima Indians Diabetes Dataset.

Model Training: Implementation and evaluation of multiple machine learning classifiers.

Model Explainability: In-depth interpretation of predictions using SHAP (SHapley Additive exPlanations) and LIME (Local Interpretable Model-agnostic Explanations).

Web Application: An interactive Streamlit app that allows users to input patient data and get both a prediction and a visual explanation.

#📊 Dataset
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
