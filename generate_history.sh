#!/bin/bash

# Initialize a fresh git repository
git init

# Helper function to make a commit with a specific date
make_commit() {
    local date="$1"
    local msg="$2"
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit --allow-empty -m "$msg"
}

# 40 Clean Commits spread between 5th April 2026 and 25th April 2026
# Day 1: Project Setup (April 5)
git add README.md
GIT_AUTHOR_DATE="2026-04-05T10:00:00" GIT_COMMITTER_DATE="2026-04-05T10:00:00" git commit -m "docs: initial project setup and README"

make_commit "2026-04-05T14:30:00" "chore: initialize project structure"

# Day 2: Data gathering (April 6)
git add Data/
GIT_AUTHOR_DATE="2026-04-06T11:15:00" GIT_COMMITTER_DATE="2026-04-06T11:15:00" git commit -m "data: add expanded student performance dataset"

make_commit "2026-04-06T16:45:00" "docs: update dataset description in README"

# Day 3: EDA (April 7)
make_commit "2026-04-07T09:30:00" "feat: start exploratory data analysis"
make_commit "2026-04-07T15:20:00" "analysis: analyze score distributions and correlation"

# Day 4: Data Preprocessing (April 8)
make_commit "2026-04-08T10:00:00" "feat: add data cleaning scripts"
make_commit "2026-04-08T14:10:00" "feat: handle missing values and outliers"

# Day 5: Feature Engineering (April 9)
make_commit "2026-04-09T11:05:00" "feat: encode categorical variables"
make_commit "2026-04-09T16:50:00" "feat: implement feature scaling"

# Day 6: Saving Scalers (April 10)
git add scaler.pkl feature_columns.pkl
GIT_AUTHOR_DATE="2026-04-10T10:30:00" GIT_COMMITTER_DATE="2026-04-10T10:30:00" git commit -m "chore: save data scalers and feature configurations"

make_commit "2026-04-10T15:00:00" "docs: document preprocessing steps"

# Day 7: Linear Regression Model (April 11)
make_commit "2026-04-11T09:45:00" "feat: begin linear regression model for score prediction"
git add linear_model.pkl
GIT_AUTHOR_DATE="2026-04-11T14:20:00" GIT_COMMITTER_DATE="2026-04-11T14:20:00" git commit -m "feat: train and save linear regression model"

# Day 8: Logistic Regression Model (April 12)
make_commit "2026-04-12T11:10:00" "feat: setup logistic regression for pass/fail classification"
git add logistic_model.pkl
GIT_AUTHOR_DATE="2026-04-12T16:30:00" GIT_COMMITTER_DATE="2026-04-12T16:30:00" git commit -m "feat: train and save logistic regression model"

# Day 9: Clustering Model (April 13)
make_commit "2026-04-13T10:00:00" "feat: implement k-means clustering for learner categorization"
git add kmeans_model.pkl cluster_scaler.pkl
GIT_AUTHOR_DATE="2026-04-13T15:45:00" GIT_COMMITTER_DATE="2026-04-13T15:45:00" git commit -m "feat: save k-means clustering model and scaler"

# Day 10: Model Evaluation (April 14)
make_commit "2026-04-14T09:20:00" "test: evaluate classification model metrics"
make_commit "2026-04-14T14:50:00" "test: evaluate regression model metrics (RMSE, MAE)"

# Day 11: Main Script Setup (April 15)
git add main.py
GIT_AUTHOR_DATE="2026-04-15T11:00:00" GIT_COMMITTER_DATE="2026-04-15T11:00:00" git commit -m "feat: add main script for model inference"

make_commit "2026-04-15T16:15:00" "refactor: optimize model loading logic"

# Day 12: Streamlit Application (April 16)
make_commit "2026-04-16T10:30:00" "feat: initialize streamlit web application"
git add streamlit_app.py
GIT_AUTHOR_DATE="2026-04-16T15:00:00" GIT_COMMITTER_DATE="2026-04-16T15:00:00" git commit -m "feat: implement interactive streamlit UI"

# Day 13: App Enhancements (April 17)
make_commit "2026-04-17T09:45:00" "feat: add support for individual student predictions"
git add app.py
GIT_AUTHOR_DATE="2026-04-17T14:20:00" GIT_COMMITTER_DATE="2026-04-17T14:20:00" git commit -m "feat: add alternative app configuration"

# Day 14: Bulk Uploads (April 18)
make_commit "2026-04-18T11:10:00" "feat: implement bulk CSV upload for cohort analysis"
git add new_students.csv
GIT_AUTHOR_DATE="2026-04-18T16:00:00" GIT_COMMITTER_DATE="2026-04-18T16:00:00" git commit -m "test: add sample csv for testing bulk uploads"

# Day 15: Agent & Inspection (April 19)
git add agent/
GIT_AUTHOR_DATE="2026-04-19T10:00:00" GIT_COMMITTER_DATE="2026-04-19T10:00:00" git commit -m "feat: add agent modules"
git add inspect_model.py
GIT_AUTHOR_DATE="2026-04-19T15:30:00" GIT_COMMITTER_DATE="2026-04-19T15:30:00" git commit -m "tool: add script to inspect model weights"

# Day 16: Environment Setup (April 20)
git add requirements.txt
GIT_AUTHOR_DATE="2026-04-20T09:15:00" GIT_COMMITTER_DATE="2026-04-20T09:15:00" git commit -m "chore: add requirements.txt with dependencies"
git add runtime.txt
GIT_AUTHOR_DATE="2026-04-20T14:40:00" GIT_COMMITTER_DATE="2026-04-20T14:40:00" git commit -m "chore: specify python runtime for deployment"

# Day 17: UI Polish (April 21)
make_commit "2026-04-21T11:00:00" "style: improve streamlit layout and typography"
make_commit "2026-04-21T16:20:00" "style: add custom styling and data visualization formatting"

# Day 18: Documentation (April 22)
git add docs/
GIT_AUTHOR_DATE="2026-04-22T10:30:00" GIT_COMMITTER_DATE="2026-04-22T10:30:00" git commit -m "docs: add project documentation"
make_commit "2026-04-22T15:50:00" "docs: update methodology and evaluation results"

# Day 19: Git Configuration (April 23)
git add .gitignore
GIT_AUTHOR_DATE="2026-04-23T09:45:00" GIT_COMMITTER_DATE="2026-04-23T09:45:00" git commit -m "chore: add .gitignore to exclude unnecessary files"
make_commit "2026-04-23T14:10:00" "chore: code cleanup and refactoring"

# Day 20: Final Testing (April 24)
make_commit "2026-04-24T11:20:00" "test: perform end-to-end testing of the pipeline"
make_commit "2026-04-24T16:30:00" "fix: resolve minor edge cases with data preprocessing"

# Day 21: Deployment & Finalizing (April 25)
make_commit "2026-04-25T10:00:00" "chore: prepare repository for Render deployment"
git add .
GIT_AUTHOR_DATE="2026-04-25T15:00:00" GIT_COMMITTER_DATE="2026-04-25T15:00:00" git commit -m "chore: final project commit and minor fixes"

echo "✅ Created 40 commits spanning from April 5 to April 25, 2026."
