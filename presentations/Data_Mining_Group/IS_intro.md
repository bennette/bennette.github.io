Integer programming for instance selection in supervised learning
========================================================
author: Walter Bennette
date: 02-28-2014

Outline
=================
1. Motivation 
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection  
    - Motivation  
    - Past formulation  
3. IP instance selection formulation  
4. Results

Outline
=================
1. Motivation 
    - ***What is classification?***
    - Why do we want better classifiers?
2. Instance selection  
    - Motivation  
    - Past formulation  
3. IP instance selection formulation  
4. Results

What is classification?
=======================

<a href="http://www.nytimes.com/2012/02/19/magazine/shopping-habits.html?pagewanted=all&_r=0" target="_blank">How Companies Learn Your Secrets</a>  
![alt text][id10]  
Target used data mining to determine when customers became pregnant.

[id10]:http://bennette.github.io/presentations/Data_Mining_Group/Images/target.png "target"


What is classification?
=======================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/training_data.png" width=1100 height=600>
</div>

What is classification?
=======================

A ***classifier*** is a scheme built from training data to classify unlabeled data.  

The ***decision tree*** classifier builds a model that tries to split the data into homogeneous groups.

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/decision_tree.png" width=700 height=300>
</div>

What is classification?
=======================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/classification_overview.png" width=1100 height=600>
</div>

What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/classify_1.png" width=700 height=600>
</div>

What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/classify_2.png" width=700 height=600>
</div>

What is classification?
=======================

Test accuracy is found by making predictions on previously unseen data.

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/test_data.png" width=900 height=300>
</div>

We say the decison tree has ***80% test accuracy*** because four of the five predictions are correct.

Outline
=================
1. Motivation 
    - What is classification?
    - ***Why do we want better classifiers?***
2. Instance selection  
    - Explanation  
    - Past formulation  
3. IP instance selection formulation  
4. Results

Why do we want better classifiers?
==================================

Classification models can be useful in a variety of application areas
- Retail
- Healthcare
- Finance

Better (or classifiers with higher testing accuracy) are beneficial
- Make fewer misclassifications
- Gain useful knowledge when analyzing the classifier

Outline
=================
1. Motivation 
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection  
    - ***Motivation***  
    - Past formulation  
3. IP instance selection formulation  
4. Results

Instance Selection Motivation
==============================

- Aspects of the training data may make it difficult to build an accurate classifier  

- We believe that selecting which instances to learn from can improve the accuracy of a classifier.  This is called ***instance selection***!

Instance Selection Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap1.png" width=700 height=400>
</div>

Where should these classes be seperated?

Instance Selection Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap2.png" width=700 height=400>
</div>

Where should these classes be seperated?


Instance Selection Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap3.png" width=700 height=400>
</div>

Where should these classes be seperated?

Instance Selection Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap4.png" width=700 height=400>
</div>

Where should these classes be seperated?











































































































































































































