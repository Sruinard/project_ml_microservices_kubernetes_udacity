from sklearn.externals import joblib
import pandas as pd


clf = joblib.load("./model_data/boston_housing_prediction.joblib")

clf.predict([[10,234,245,234,234, 12]])