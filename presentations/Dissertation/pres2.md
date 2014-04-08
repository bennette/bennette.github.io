
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
1.  Motivation
2.  Methodology 
3.  Experimental results  
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
1.  Motivation
2.  Methodology
    - **Instance selection**  
    - Previous work
    - Integer programming formulation
3.  Experimental results  
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


Outline
=========  
1.  Motivation
2.  Methodology
    - Instance selection  
    - **Previous work**
    - Integer programming formulation
3.  Experimental results  
4.  Impact

Previous work
=============================
***Started for k-NN***  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/knn1.png" width=500 height=1200>   
</div> 

****  
<br>  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/knn2.png" width=500 height=1200>
</div>


Previous work
============================= 
***Model-based classifiers***   
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ x_i \in \{0,1\} \ \forall \ i \in I}$  
<br>  
* This is a combinatorial optimization problem
* There are $2^n$ possible solutions  
* There is no closed form for the objective function


Previous work
=============================   
- A **VAST** majority rely on evolutionary algorithms to solve this problem.

- Other combinatorial optimization problems look similar to instance selection if **the problem is reformulated**.  This allows us to **take advantage of optimization theory**. 
 
Outline
=========
1.  Motivation
2.  Methodology
    - Instance selection  
    - Previous work
    - **Integer programming formulation**
3.  Experimental results  
4.  Impact 
 
Integer programming formulation
===============================

**Old decison variables**  
- Should instance $i$ be included in the training data?
- $\ x_i \in \{0,1\} \ \forall \ i \in I$
- Example
    - $Training \ Data = \{\tau_1, \tau_2, ..., \tau_n   \}$
    - $If \ x_1 = 1, \ then \ \tau_1 \in \ New \ Training \ Data$
  
Integer programming formulation
===============================

**New decision variables**  
- Should the $j^{th}$ subset (column) of instances be included in the training data?  
- $x_j \in \{0,1\} \ \forall \ j \in J$
- Example
    - $Training \ Data = \{\tau_1, \tau_2, ..., \tau_n   \}$
    - $Column^{(1)} = \{\tau_1, \tau_5, \tau_6 \}$  
    - $\ If \ x_1 = 1, \ then \ \{\tau_1, \tau_5, \tau_6 \} \in \ New \ Training \ Data$

Integer programming formulation
===============================
transition: none
**Formulation 1**

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br><br><br><br>
&nbsp; &nbsp; &nbsp;

Integer programming formulation
================================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br><br>   
&nbsp; &nbsp; <font color="red"><---</font>A column is <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; associated with each <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; possible subset of <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; instances

Integer programming formulation
================================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***

<br><br><br><br><br><br> 
&nbsp; &nbsp; &nbsp;  <font color="red"><---</font> Select at most one <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;column

Integer programming formulation
================================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br>  
&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $c_j$ is the accuracy of a <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; classifier built from <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the contents of <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; column $\ j$
 

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




