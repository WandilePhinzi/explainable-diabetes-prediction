# 🩺 Explainable Diabetes Prediction
A machine learning project that not only predicts the likelihood of diabetes but also explains why the model made its prediction. Built with a focus on transparency and interpretability using SHAP.


# 📖 Overview
This project tackles the critical challenge of "black box" models in healthcare AI. While many models can predict diabetes with high accuracy, their decisions are often opaque. This repository demonstrates how to build a predictive model and, more importantly, uses state-of-the-art Explainable ML (XML) techniques to make the model's reasoning transparent and understandable for clinicians and patients.

## Key Features:

Data Preprocessing & EDA: Comprehensive cleaning and exploratory data analysis of the Pima Indians Diabetes Dataset.

Model Training: Implementation and evaluation of multiple machine learning classifiers.

Model Explainability: In-depth interpretation of predictions using SHAP (SHapley Additive exPlanations).

Web Application: An interactive Streamlit app that allows users to input patient data and get both a prediction and a visual explanation.

# 📊 Dataset
The project uses the Pima Indians Diabetes Database, a well-known dataset from the National Institute of Diabetes and Digestive and Kidney Diseases.

Objective: To predict whether a patient has diabetes (binary classification: 1 = Yes, 0 = No).

Features: The dataset includes diagnostic measurements such as:

- **Pregnancies**

- **Glucose (Plasma glucose concentration)**

- **BloodPressure (Diastolic blood pressure)**

- **SkinThickness (Triceps skin fold thickness)**

- **Insulin (2-Hour serum insulin)**

- **BMI (Body Mass Index)**

- **DiabetesPedigreeFunction (A function that scores the likelihood of diabetes based on family history)**

Age
# 🚀 Quick Start
1. Prerequisites
Ensure you have Python 3.8+ installed on your system.

2. Installation
Clone the repository and install the required dependencies.

## Clone the repo
git clone https://github.com/WandilePhinzi/explainable-diabetes-prediction.git

## Navigate into the project directory
cd explainable-diabetes-prediction

## Install dependencies
pip install -r requirements.txt
Running the Project
You can explore the project in two ways:

Option A: Jupyter Notebook
Run the notebooks/diabetes_prediction.ipynb (or the main analysis notebook) to walk through the entire data science pipeline step-by-step, from EDA to model explanation.

Option B: Interactive Web App
Launch the Streamlit web application for an interactive experience.

## bash
streamlit run app/app.py
This will open a browser window where you can input feature values and get instant predictions with explanations.

# 🗂️ Project Structure
- **explainable-diabetes-prediction/**
  - **Datasets/**
    - `binary_health_indicators_BRFSS2015.csv`                 # BRFSS 2015 health indicators dataset
    - `diabetes_dataset.csv`                                   # Primary diabetes dataset  
    - `diabetes_prediction_dataset.csv`                        # Diabetes prediction dataset
  - **Jupyter Notebooks/**
    - **Diabetes_dataset_training/**
      - `Diabetes_Dataset_Using_ExtremeGradientBoost.ipynb`    # XGBoost training on diabetes dataset
      - `Diabetes_Dataset_Using_LightGradientBoost.ipynb`      # LightGBM training on diabetes dataset
      - `Diabetes_Dataset_Using_RandomForest.ipynb`            # Random Forest training on diabetes dataset
    - **Diabetes_prediction_Dataset_BRFSS_training/**
      - `Diabetes_Prediction_Dataset_BRFSS_Using_ExtremeGradientBoost.ipynb`  # XGBoost training on BRFSS dataset
      - `Diabetes_Prediction_Dataset_BRFSS_Using_LightGradientBoost.ipynb`    # LightGBM training on BRFSS dataset  
      - `Diabetes_Prediction_Dataset_BRFSS_Using_RandomForest.ipynb`          # Random Forest training on BRFSS dataset
    - **Diabetes_prediction_dataset_training/**
      - `Diabetes_Prediction_Dataset_Using_ExtremeGradientBoost.ipynb`        # XGBoost training on prediction dataset
      - `Diabetes_Prediction_Dataset_Using_LightGradientBoost.ipynb`          # LightGBM training on prediction dataset
      - `Diabetes_Prediction_Dataset_Using_RandomForest.ipynb`                # Random Forest training on prediction dataset
  - **Visualization Plots/**
    - **BFRSS_2015_PLOTS/**
      - **Extreme Gradient/**
        - `Feature Importance.png`                             # Feature importance visualization
        - `ROC_Curve_XGBoost.png`                              # ROC curve for XGBoost
        - `Summary Plot.png`                                   # Model summary plot
        - `Waterfall_XGBoost.png`                              # Waterfall plot for explanations
        - `XGBoost Bar plot_BRFSS.png`                         # Bar plot visualization
      - **Light Gradient Boost/**
        - `BarPlot.png`                                        # Feature importance bar plot
        - `Feature importance.png`                             # Feature importance analysis
        - `ROC Curve.png`                                      # ROC curve performance
        - `Summary Plot.png`                                   # Model summary
        - `Waterfall.png`                                      # Waterfall explanation plot
      - **Random Forest/**
        - `Feature importance.png`                             # Random Forest feature importance
        - `ROC.png`                                            # ROC curve analysis
    - **Diabetes_Prediction_Dataset_Plots/**
      - **Extreme Gradient Boost/**
        - `Feature Importance.png`                             # XGBoost feature importance
        - `ROC Curve for Extreme Gradient.png`                 # ROC curve visualization
        - `Summary Plot.png`                                   # Model summary
        - `Waterfall plot.png`                                 # Waterfall explanation
      - **Light Gradient Boost/**
        - `Feature Importance.png`                             # LightGBM feature importance
        - `ROC Curve.png`                                      # Performance ROC curve
        - `Summary Plot.png`                                   # Model summary
        - `Waterfall Plot.png`                                 # Explanation waterfall
      - **Random Forest/**
        - `Feature Importance.png`                             # Random Forest features
        - `ROC Curve.png`                                      # ROC performance
        - `Summary Plot.png`                                   # Model summary
        - `Waterfall Plot.png`                                 # Explanation visualization
    - **Diabetes_dataset_plots/**
      - **Extreme Gradient/**
        - `Importance Plot.png`                                # Feature importance
        - `ROC_Curve for Extreme Gradient.png`                 # ROC curve
        - `Summary Plot for Extreme Model.png`                 # Model summary
        - `Waterfall for Extreme Model.png`                    # Waterfall explanation
      - **Light Gradient/**
        - `Bar Plot for Light Gradient.png`                    # Feature bar plot
        - `ROC Curve for Light Gradient.png`                   # ROC curve
        - `Summary Plot for Light Gradient.png`                # Model summary
        - `Variable Importance Plot for Light Gradient.png`    # Variable importance
        - `Waterfall plot.png`                                 # Waterfall visualization
      - **Random Forest/**
        - `ROC Curve for Random Forest.png`                    # ROC performance
        - `Summary Plot.png`                                   # Model summary
        - `Variable Importance for Random Forest.png`          # Variable importance
        - `Waterfall plot.png` 

# 🔍 Model Explainability in Action
This project highlights the power of XML. For any given prediction, you can generate explanations that answer:

"Which factors were most influential in this prediction?"

"How did a specific feature, like Glucose level, push the prediction towards 'Diabetic' or 'Non-Diabetic'?"

SHAP Explanations
Summary Plot: Provides a global view of feature importance.

Force Plot: Shows a local explanation for a single prediction, visualizing how each feature contributed to the output.

# 📈 Results
The project compares several models (LightGBoost,XGBoost, Random Forest) and selects the best performer based on metrics like Accuracy, Precision, Recall, and F1-Score. The final model achieves robust performance while maintaining a focus on interpretability.

Best Model: LightGradientBoost

Accuracy: 97%

Key insights from explainability analysis show that Glucose level, BMI, and Age are consistently the top contributors to the model's predictions.

# 👨‍💻 Author
Wandile Phinzi

GitHub: @WandilePhinzi

LinkedIn: Wandile Phinzi

# 🙏 Acknowledgments
The dataset providers: National Institute of Diabetes and Digestive and Kidney Diseases.

The creators of SHAP and LIME for their invaluable explainability libraries.

The Streamlit team for enabling the rapid creation of interactive web apps.
