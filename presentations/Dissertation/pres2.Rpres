
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
2.  Methodology 
3.  Experimental Results  
4.  Impact

Motivation
=======================

A model-based classifier is an abstraction of data used to make predictions
- Retail
- Healthcare
- Finance

Better classifiers are beneficial
- Make fewer missclassifications
- Gain useful knowledge when analyzing the classifier

Motivation
================================================

- Aspects of a training dataset may make it difficult to build/induce/learn an accurate classifier.  


Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap1.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap2.png" width=700 height=400>
</div>

Where should these classes be separated?


Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap3.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap4.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers1.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Motivation
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers2.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Motivation
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority1.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?

Motivation
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority2.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?
 
 
Motivation
================================================

- We believe that selecting which instances to learn from can improve the accuracy of a classifier.  This is called ***instance selection***!

Outline
=========
transition: none
1.  Motivation
2.  Methodology
    - **Instance selection**  
    - Previous work
    - Integer programming formulation
3.  Experimental Results  
4.  Impact

Instance selection
=============================

- Instance selection addresses issues in the training data by creating a subset of the original data

- The intention is that the classification algorithm will perform better when learning from the selected/reduced data set

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain1.png" width=900 height=500>
</div>

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain2.png" width=900 height=500>
</div>

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain3.png" width=900 height=500>
</div>

Instance selection
=============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain4.png" width=800 height=450>
</div>

Instance selection
=============================

Instance selection is a combinatorial optimization problem  
- Each instance is included or not included in the selected training data

Goal: maximize classifier accuracy   
- No closed form objective function
- $2^n$ subsets for a dataset of size $n$

Outline
=========
transition: none
1.  Motivation
2.  Methodology
    - Instance selection  
    - **Previous work**
    - Integer programming formulation
3.  Experimental Results  
4.  Impact

Previous work
============================= 
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ \tau_i \in \{0,1\} \ \forall \ i \in I}$

<br>
<br>
* $I \$ is the set of all instances  
* The decision is whether or not to include an instance in the new training data

Previous work
============================= 
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

