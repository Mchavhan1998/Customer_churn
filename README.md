# 📂 Customer_churn
This project focuses on analyzing customer churn data to identify key factors contributing to customer attrition and building predictive models to forecast churn.

## 🛠 Skills
Data Analysis, Python, Numpy, Pandas, Matplotlib, Supervised learning 

## 📚 Project Details
### Data Exploration and Preprocessing
- Loaded and cleaned the customer churn dataset.
  Extracted specific columns and filtered data based on conditions.
### Visualizations and Insights
- Aggregated and visualized data to understand the distribution of Internet service categories.
  Analyzed key factors affecting customer churn.
### Predictive Modeling
#### Decision Tree Classifier:
- Built a decision tree model with tenure as the independent variable.
  Split the data into train and test sets with an 80:20 ratio.
  Achieved a significant accuracy score and validated the model using a confusion matrix.
#### Random Forest Classifier:
- Built a random forest model with tenure and monthly charges as independent variables.
  Split the data into train and test sets with a 70:30 ratio.
  Achieved a significant accuracy score and validated the model using a confusion matrix.

## 📙 How to Use

1. **Clone the repository**:
    ```bash
    git clone https://github.com/1vig/customerchurn-data-analysis.git
    cd customerchurn-data-analysis
    ```

2. **Install the required dependencies**:
    ```bash
    pip install -r requirements.txt
    ```

3. **Run the Jupyter Notebooks** to explore the data, build models, and visualize results:
    ```bash
    jupyter notebook
    ```

# License
This project is licensed under the MIT License.
