
Instance selection for model-based classifiers
========================================================  
author: Walter Bennette
date: 04-15-2014
 
Take away message
================
Model-based classifiers with improved accuracy can be created by learning from carefully selected instances.

<small><small><small><small>
<span style ="position:absolute;left:0;bottom:0">1 / </span>
</small></small></small></small>

Outline
=========
transition: none
1.  Motivation   
2.  Approach 
3.  Results  
4.  Impact

Outline
=========
transition: none
1.  Motivation
    - What is classification?
    - Why ignore data?  
2.  Approach 
3.  Results  
4.  Impact

Outline
=========
transition: none
1.  Motivation
    - **What is classification?**
    - Why ignore data?  
2.  Approach 
3.  Results  
4.  Impact
  
What is classification?
=======================
<div align="left">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/target.png" width=200 height=250>
</div>
In <a href="http://www.nytimes.com/2012/02/19/magazine/shopping-habits.html?pagewanted=all&_r=0" target="_blank">"How Companies Learn Your Secrets"</a>, Target is said to have used classification to predict if customers were pregnant.  


What is classification?
=======================
 
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/training_data.png" width=1100 height=550>
</div>

What is classification?
=======================

A ***classifier*** is a scheme built from training data to classify unlabeled instances.  
<br>  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/decision_tree.png" width=700 height=300>
</div>
 
What is classification?
=======================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/classification_exampleI.png" width=1100 height=600>
</div>
 
What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/class_example1.png" width=700 height=600>
</div>

What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/class_example3.png" width=700 height=600>
</div>

What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/class_example4.png" width=700 height=600>
</div>

What is classification?
=======================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/class_example2.png" width=700 height=600>
</div>

What is classification?
=======================

Test accuracy is found by making predictions on previously unseen data.

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/test_data.png" width=900 height=300>
</div>

We say the decision tree has ***80% test accuracy*** because four of the five classifications were correct.

What is classification?
=======================

Classification models can be useful in a variety of application areas
- Retail
- Healthcare
- Finance

Better (or classifiers with higher testing accuracy) are beneficial
- Make fewer missclassifications
- Gain useful knowledge when analyzing the classifier

Outline
=========
transition: none
1.  Motivation
    - What is classification?
    - **Why ignore data?**  
2.  Approach 
3.  Results  
4.  Impact

Why ignore data?
================================================

- Aspects of a training dataset may make it difficult to build/induce/learn an accurate classifier.  

- We believe that selecting which instances to learn from can improve the accuracy of a classifier.  This is called ***instance selection***!

- Instance selection is akin to attribute selection.

Why ignore data?
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap1.png" width=700 height=400>
</div>

Where should these classes be separated?

Why ignore data?
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap2.png" width=700 height=400>
</div>

Where should these classes be separated?


Why ignore data?
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap3.png" width=700 height=400>
</div>

Where should these classes be separated?

Why ignore data?
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap4.png" width=700 height=400>
</div>

Where should these classes be separated?

Why ignore data?
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers1.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Why ignore data?
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers2.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Why ignore data?
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority1.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?

Why ignore data?
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority2.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?
 
Outline
=========
transition: none
1.  Motivation
2.  Approach 
    - What is instance selection?  
    - What is my contribution?
3.  Results  
4.  Impact

Outline
=========
transition: none
1.  Motivation
2.  Approach 
    - **What is instance selection?**  
    - What is my contribution?
3.  Results  
4.  Impact

What is instance selection?
=============================

- Instance selection addresses issues in the training data by creating a subset of the original data

- The intention is that the classification algorithm will perform better when learning from the selected/reduced data set

What is instance selection?
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain1.png" width=900 height=500>
</div>

What is instance selection?
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain2.png" width=900 height=500>
</div>

What is instance selection?
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain3.png" width=900 height=500>
</div>

What is instance selection?
=============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain4.png" width=800 height=450>
</div>

What is instance selection?
=============================

Instance selection is a combinatorial optimization problem  
- Each instance is included or not included in the selected training data

Goal: maximize classifier accuracy   
- No closed form objective function
- $2^n$ subsets for a dataset of size $n$

What is instance selection? 
=============================
***Previous work:***  
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ \tau_i \in \{0,1\} \ \forall \ i \in I}$

<br>
<br>
* $I \$ is the set of all instances  
* The decision is whether or not to include an instance in the new training data

What is instance selection?
=============================
***Previous work:***  
<br>  
- A ***VAST*** majority rely on evolutionary algorithms to solve this problem.

- Other combinatorial optimization problems look similar to instance selection if ***the problem is reformulated***.  This allows us to ***take advantage of optimization theory***. 
 
Outline
=========
transition: none
1.  Motivation
2.  Approach 
    - What is instance selection?  
    - **What is my contribution?**
3.  Results  
4.  Impact

What is my contribution?
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br><br><br><br>
&nbsp; &nbsp; &nbsp;

Overall Results
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/results2.png" width=500 height=1200>   
</div>  
****  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/results1.png" width=500 height=1200>
</div>   


Overview
================

Research goal: Better classification models (higher testing accuracy)  
<br>
Premise: Aspects of a classifier's training data can make it difficult to induce an accurate model  
<br>
Approach: Address issues in the training data through instance selection 
 
<small><small><small><small>
<span style ="position:absolute;left:0;bottom:0">1 / </span>
</small></small></small></small>

