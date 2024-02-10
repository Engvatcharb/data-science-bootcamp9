# -*- coding: utf-8 -*-
"""Churn_Model.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1GUKES7aRGMDyRnLtjfOTF6X6g0bQomji
"""

from sklearn import tree
from sklearn.model_selection import train_test_split
import numpy as np
import pandas as pd
import csv

file_path = '/content/churn.csv'

churn_data = pd.read_csv(file_path)

y= churn_data["churn"]
#X= churn_data[["totaldaycharge","totalnightcharge","totaldaycalls","totalnightcalls"]]
X= churn_data[["totaldaycharge","totaldaycalls"]]
print(X)

## 1. split ddata
X_train , X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20, random_state = 19)

## 2. train model
model = tree.DecisionTreeClassifier()
model = model.fit(X_train,y_train)  ## model fitting
tree.plot_tree(model)
## 3. score
train_error = model.score(X_train,y_train)
## 4. evaluate
test_error = model.score(X_test,y_test)
print (f"Train Error : {train_error} , Test Error : {test_error}")

from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
import numpy as np
import pandas as pd
import csv

file_path = '/content/churn.csv'

churn_data = pd.read_csv(file_path)

y= churn_data["churn"]
#X= churn_data[["totaldaycharge","totalnightcharge","totaldaycalls","totalnightcalls"]]
X= churn_data[["totaldaycharge","totaldaycalls"]]
print(X)

## 1. split ddata
X_train , X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20, random_state = 19)

## 2. train model
model = MLPClassifier(solver='lbfgs', alpha=1e-5,hidden_layer_sizes=(5, 2), random_state=1)
model = model.fit(X_train,y_train)  ## model fitting
## 3. score
train_error = model.score(X_train,y_train)
## 4. evaluate
test_error = model.score(X_test,y_test)
print (f"Train Error : {train_error} , Test Error : {test_error}")

## Comparing model 3 model
from sklearn.model_selection import train_test_split
from sklearn.model_selection import cross_val_score
from sklearn.datasets import make_blobs
from sklearn.ensemble import RandomForestClassifier
from sklearn.ensemble import ExtraTreesClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.neural_network import MLPClassifier

import numpy as np
import pandas as pd
import csv

file_path = '/content/churn.csv'

churn_data = pd.read_csv(file_path)

y= churn_data[["churn"]]
X= churn_data[["totaldaycharge","totaldaycalls","totalnightcharge","totalnightcalls"]]
print(X)

## 1. first Model DecisionTreeClassifier
X, y = make_blobs(n_samples=5000, n_features=10, centers=100,random_state=0)
clf = DecisionTreeClassifier(max_depth=None, min_samples_split=2,random_state=0)
scores = cross_val_score(clf, X, y, cv=5)
print(f"Model - DecisionTreeClassifier : {scores.mean()}")

## 2. Second Model RandomForestClassifier
clf = RandomForestClassifier(n_estimators=10, max_depth=None,min_samples_split=2, random_state=0)
scores = cross_val_score(clf, X, y, cv=5)
print(f"Model - RandomForestClassifier : {scores.mean()}")

## 3. Second Model ExtraTreeClassifier
clf = ExtraTreesClassifier(n_estimators=10, max_depth=None,min_samples_split=2, random_state=0)
scores = cross_val_score(clf, X, y, cv=5)
print(f"Model - ExtraTreeClassifier : {scores.mean()}")
scores.mean() > 0.999

import numpy as np
import pandas as pd
import csv
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn import metrics
from sklearn.datasets import make_classification
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import f1_score

file_path = '/content/churn.csv'

churn_data = pd.read_csv(file_path)


X= churn_data[["totaldaycharge","totalnightcharge","totaldaycalls","totalnightcalls"]]
y= churn_data[["churn"]]
#print(X)
X,y = make_classification(n_features = 4)
## 1. split ddata
X_train , X_test, y_train, y_test = train_test_split(X, y, test_size = 0.20, random_state = 19)

## 2. train model
model = LogisticRegression()
model = model.fit(X_train,y_train)  ## model fitting

#define metrics
y_pred_proba = model.predict_proba(X_test)[:,1]
fpr, tpr, _ = metrics.roc_curve(y_test,  y_pred_proba)
auc = metrics.roc_auc_score(y_test, y_pred_proba)

#create ROC curve
plt.plot(fpr,tpr,label="AUC="+str(auc))
plt.legend(loc=4)
plt.show()

train_error = model.score(X_train,y_train)
print(f"F1-score on train data: {train_error:.4f}")
y_pred = model.predict(X_test)
f1_score_test = f1_score(y_test, y_pred)
print(f"F1-score on test data: {f1_score_test:.4f}")

