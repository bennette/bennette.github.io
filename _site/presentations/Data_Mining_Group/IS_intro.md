Integer programming for instance selection in supervised learning
========================================================
author: Walter Bennette
date: 02-28-2014

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation  
3. Instance selection reformulation 
    - Reformulation  
    - Column generation
4. Results

Outline
=================
1. Classification   
    - ***What is classification?***
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation  
3. Instance selection reformulation  
    - Reformulation  
    - Column generation
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

We say the decision tree has ***80% test accuracy*** because four of the five predictions are correct.

Outline
=================
1. Classification   
    - What is classification?
    - ***Why do we want better classifiers?***
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation  
3. Instance selection reformulation  
    - Reformulation  
    - Column generation  
4. Results

Why do we want better classifiers?
==================================

Classification models can be useful in a variety of application areas
- Retail
- Healthcare
- Finance

Better (or classifiers with higher testing accuracy) are beneficial
- Make fewer missclassifications
- Gain useful knowledge when analyzing the classifier

Questions????
================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/confused2.gif" width=700 height=600>
</div>

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - **Motivation**
    - Explanation  
    - Past formulation  
3. Instance selection reformulation  
    - Reformulation  
    - Column generation  
4. Results

Motivation
==============================

- Aspects of training data may make it difficult to build/induce/learn an accurate classifier  

- We believe that selecting which instances to learn from can improve the accuracy of a classifier.  This is called ***instance selection***!

Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap1.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap2.png" width=700 height=400>
</div>

Where should these classes be separated?


Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap3.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
==============================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap4.png" width=700 height=400>
</div>

Where should these classes be separated?

Motivation
==============================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers1.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Motivation
==============================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers2.png" width=700 height=400>
</div>

Should these outliers be accommodated?

Motivation
==============================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority1.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?

Motivation
==============================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority2.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?

Motivation
=============================

- Instance selection can address issues in the training data by creating a subset of the original data

- The intention is that the classification algorithm will perform better when learning from the selected/reduced data set

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - **Explanation**  
    - Past formulation  
3. Instance selection reformulation  
    - Reformulation  
    - Column generation  
4. Results

Explanation
===============
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain1.png" width=900 height=500>
</div>

Explanation
===============
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain2.png" width=900 height=500>
</div>

Explanation
===============
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain3.png" width=900 height=500>
</div>

Explanation
===============

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain4.png" width=800 height=450>
</div>

Explanation
===============

Instance selection is a combinatorial optimization problem  
- Each instance is included or not included in the selected training data

Goal: maximize classifier accuracy   
- No closed form objective function
- $2^n$ subsets for a dataset of size $n$

Good?
================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/confused3.gif" width=700 height=501>
</div>


Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - **Past formulation** 
3. Instance selection reformulation   
    - Reformulation  
    - Column generation  
4. Results

Past formulation
==================
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ x_i \in \{0,1\} \ \forall \ i \in I}$

<br>
<br>
* $I \$ is the set of all instances  
* The decision is whether or not to include an instance in the new training data

Past formulations 
===================

- A ***VAST*** majority rely on evolutionary algorithms to solve this problem.

- Other combinatorial optimization problems look similar to instance selection if ***the problem is reformulated***.  This allows us to ***take advantage of optimization theory***. 

How it feels to find the gap in literature
==================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/party.gif" width=900 height=500>
</div>

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation
3. Instance selection reformulation
    - **Reformulation**   
    - Column generation
4. Results

Instance selection reformulation
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br><br><br><br>
&nbsp; &nbsp; &nbsp;

Instance selection reformulation
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br><br><br>  
&nbsp; &nbsp; <font color="red"><---</font>A column is <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; associated with each <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; possible subset of <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; instances

Instance selection reformulation
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br> 
&nbsp; &nbsp; &nbsp;  <font color="red"><---</font> Select at most one <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;column

Instance selection reformulation
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br>
&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $a_{ij}$ indicates if instance<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$i \$ is in column $\ j$

Instance selection reformulation
================================
transition: none
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***


&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $c_j$ is the accuracy of a <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; classifier built from <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the contents in column <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$\ j$

Instance selection reformulation
================================
transition: rotate
$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br><br><br>  
&nbsp; &nbsp; <font color="red"><---</font>For a dataset of size $n$ <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; there are $2^n$ decision<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; variables  

Enter COLUMN GENERATION!!
========================
type: alert
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/enter3.gif" width=700 height=500>
</div>

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation
3. Instance selection reformulation
    - Reformulation   
    - **Column generation**
4. Results

Column generation
==================

- A technique to solve linear programs with a huge number of decision variables  
    - Too many variables to solve quickly
    - Too many variables to even enumerate them all
    
- Commonly extended to integer programs
    - Relax integrality constraints
    - Branch and price

Column generation
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/cg1.png" width=900 height=400>
</div>

Column generation
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/cg2.png" width=900 height=400>
</div>

Column generation: Type I
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type1_1.png" width=1000 height=609>
</div>

Column generation: Type I
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type1_2.png" width=1000 height=609>
</div>

Column generation: Type I
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type1_3.png" width=1000 height=609>
</div>

Column generation: Type I
========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type1_4.png" width=1000 height=609>
</div>

Column generation: Type II
===========================

- Exploit a feature of the simplex algorithm to guarantee that the optimal solution of the master problem is found  

- Let us have a quick reminder of how simplex works

Column generation: Type II
===========================
incremental: true
- <small> Given a feasible solution to $\left \{max \ c^Tx: Ax \le b, x \ge 0 \right \}$</small>  
- <small> The solution can be written as the variables belonging to the basis and the variables belonging to the non-basis</small>    
- <small> Simplex works toward the optimal solution of the LP by switching a variable in the non-basis for one in the basis</small>     
- <small> For a non-basis variable $j$, $\ Reduced \ Cost_j = \left \{c_j-\pi^Ta_j   \right \}$</small>    
    - <small> $c_j \$ is the objective coefficient of variable $j$</small>  
      - <small>benefit from including variable $j$ in basis </small>  
    - <small> $a_j \$ is the column of the A matrix associated with variable $j$</small>  
    - <small> $\pi \$ is the simplex multiplier of the LP </small>
      - <small> cost of including variable $j \$ in basis </small>

Column generation: Type II
==========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type2_1.png" width=1000 height=400>
</div>

Column generation: Type II
==========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type2_2.png" width=1000 height=400>
</div>

Column generation: Type II
==========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type2_3.png" width=1000 height=400>
</div>

Column generation: Type II
==========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type2_4.png" width=1000 height=400>
</div>

Column generation: Type II
==========================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/type2_5.png" width=1000 height=400>
</div>

Column generation: Type II
==========================
incremental: true
***Process***

1. Generate a subset of variables, $J'$, from the MP  
2. Use $J'$ to define the RMP  
3. Solve the RMP for optimal dual variables $\pi^*$  
4.  Solve the POP
    - If the optimal solution is positive add $x^{new}$ to $J'$
    - If the optimal solution is non-positive then the optimal solution to the RMP is optimal to the MP

How's everyone doing?
====================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/mind1.gif" width=600 height=600>
</div>

Implementing Column Generation
===============================
transition: rotate

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br><br><br>  
&nbsp; &nbsp; <font color="red"><---</font>For a dataset of size $n$ <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; there are $2^n$ decision<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; variables  

Implementing Column Generation
==============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/cgi_1.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/cgi_2.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/cgi_3.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop1.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop2.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop3.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop4.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop5.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop6.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop7.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/pop8.png" width=900 height=500>
</div>

Implementing Column Generation
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overall.png" width=900 height=600>
</div>

Whew! Technical details are done.
===============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/whew.gif" width=900 height=500>
</div>

Outline
=================
1. Classification   
    - What is classification?
    - Why do we want better classifiers?
2. Instance selection
    - Motivation
    - Explanation  
    - Past formulation
3. Instance selection reformulation
    - Reformulation   
    - Column generation
4. ***Interesting*** **Results**

Interesting Results
===================

Statlog (Landsat Satellite) dataset  
- Classify pixels of an image  
    - 37 attributes
    - 296 instances
    - 6 classes
- UCI machine learning repository

Interesting Results
===================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/interesting.png" width=900 height=450>
</div>

Interesting Results
===================

Showing the effect of instance selection on a naive Bayes classifier.  Average test accuracy is reported.


|Dataset|Original| Instance Selection|
|-------|--------|-------------------|
|Balance|90%|91%|
|Chess|84%|90%|
|Credit Approval|78%|85%|
|E-coli|83%|83%|
|Statlog|80%|83%|
|Tic-Tac-Toe Endgame|70%|72%|

Conclusion
============

- Integer programming techniques can help us solve the instance selection problem

- Instance selection manipulates the training data to allow classifiers to take greater advantage of the data
    - overlapping classes
    - outliers
    - minority classes














































































































































































































































































