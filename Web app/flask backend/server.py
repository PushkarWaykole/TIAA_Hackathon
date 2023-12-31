from flask import Flask, request, render_template,jsonify
import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import linear_kernel
from flask_cors import CORS
app = Flask(__name__)
CORS(app) 

# Read dummy data from CSV file
dummy_data = pd.read_csv('./data.csv')

# Function to suggest stocks based on age, gender, and income
def suggest_stocks(age, gender, income):
    user_profile = f"{age} {gender} {income}"  # Combine age, gender, and income into a single string
    dummy_data = pd.read_csv('./data.csv')
    dummy_data = dummy_data.append({"Age": age, "Gender": gender, "Income": income, "Stocks": ""}, ignore_index=True)  # Add a dummy user with no stocks

    # Create TF-IDF vectorizer
    vectorizer = TfidfVectorizer()
    profiles = [f"{user['Age']} {user['Gender']} {user['Income']}" for _, user in dummy_data.iterrows()]
    tfidf_matrix = vectorizer.fit_transform(profiles)

    # Calculate cosine similarity between user profile and all profiles
    cosine_similarities = linear_kernel(tfidf_matrix[-1], tfidf_matrix[:-1]).flatten()

    # Get indices of top recommendations
    top_indices = cosine_similarities.argsort()[:-4:-1]  # Get top 3 recommendations

    # Retrieve recommended stocks from top similar profiles
    recommended_stocks = [dummy_data.loc[i, "Stocks"].split(",") for i in top_indices]

    return recommended_stocks

@app.route('/')
def index():
    return jsonify({"ok":"ok"})

@app.route('/suggest', methods=['POST'])
def get_recommendation_ml():
    if request.method == 'POST':
        age = request.form.get('age')
        gender = request.form.get('gender')
        income = request.form.get('income')

        recommended_stocks = suggest_stocks(age, gender, income)

        return jsonify(recommended_stocks);



@app.route('/api_res',methods=['POST','GET'])
def api_response():
    if request.method == 'GET':
        return 'working fine'
    age=request.form.get('age')
    savingsBalance=request.form.get('savingsBalance')
    annualIncome=request.form.get('annualIncome')
    annualExpense=request.form.get('annualExpense')
    investmentExperience=request.form.get('investmentExperience')
    investmentTimeHorizon=request.form.get('investmentTimeHorizon')
    
    from bardapi import BardCookies
    cookie_dict = {
        
    }

    bard = BardCookies(cookie_dict=cookie_dict)
    result_string = f"Savings Balance: {savingsBalance}, Annual Income: {annualIncome}, Annual Expense: {annualExpense}, Investment Experience: {investmentExperience}, Investment Time Horizon: {investmentTimeHorizon} and age is {age} ,suggest some good stock portfolio options based on the given parameters"
    print(bard.get_answer(result_string)["content"])
    return jsonify(bard.get_answer(result_string)["content"])
if __name__ == '__main__':
    app.run(debug=True)
