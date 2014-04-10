
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

Instance selection
===============


- A combinatorial optimization problem (decide to include or not to include each instance) 
- For a dataset of size $n$ there are $2^n$ solutions
- There is no closed form objective function to maximize classifier accuracy


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
***Made sense for model-based classifiers***   
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ x_i \in \{0,1\} \ \forall \ i \in I}$  
<br>  
* This is a combinatorial optimization problem
* There are $2^n$ possible solutions  
* There is no closed form for the objective function


Previous work
=============================   
- A **VAST** majority rely on evolutionary algorithms to find a solution

- Other optimization problems look similar to instance selection if **the problem is reformulated**.  This allows us to **take advantage of optimization theory**. 
 
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

**New decision variables**  
- Should the $j^{th}$ subset (column) of instances be included in the training data?  
- $x_j \in \{0,1\} \ \forall \ j \in J$
- Example
    - $Training \ Data = \{\tau_1, \tau_2, ..., \tau_n   \}$
    - $Column^{(1)} = \{\tau_1, \tau_5, \tau_6 \}$  
    - $\ If \ x_1 = 1, \ then \ \{\tau_1, \tau_5, \tau_6 \} \subseteq \ New \ Training \ Data$

Integer programming formulation
===============================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br><br><br><br>
&nbsp; &nbsp; &nbsp;

Integer programming formulation
===============================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***  
<br><br><br><br><br><br><br>  
&nbsp; &nbsp; <font color="red"><---</font>A column is <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; associated with each <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; possible subset of <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; instances  

Integer programming formulation
===============================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

*** 

<br><br><br><br><br>  
&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $a_{ij}$ indicates if instance<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$i \$ is in column $\ j$


Integer programming formulation
===============================
transition: none
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

*** 
<br><br>
&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $c_j$ is the accuracy of a <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; classifier built from <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the contents in column <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;$\ j$

Integer programming formulation
================================
**Example**    
$Training= \{\tau_1, \tau_2\}$  
$Column^{(1)}=\{\ \}$  
$Column^{(2)}=\{\tau_1 \}$  
$Column^{(3)}=\{\tau_2 \}$   
$Column^{(4)}=\{\tau_1, \tau_2 \}$  

<br>
$\mathbf {Max} \ \ \ \ 0.3x_1 + 0.7x_2 + 0.5x_3 + 0.6x_4$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \ \ 0x_1 + 1x_2 + 0x_3 + 1x_4 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_1 + 0x_2 + 1x_3 + 1x_4 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ x_1, x_2, x_3, x_4 \in \{0,1\}$ 


Integer programming formulation
===============================
transition: none
**Formulation 2**

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
**Formulation 2**  

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
**Formulation 2**  

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
**Formulation 2**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

***
<br>  
&nbsp; &nbsp; &nbsp; <font color="red"><---</font> $c_j$ is the accuracy of a <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; classifier built from <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; the contents of <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; column $\ j$
 
Integer programming formulation
================================
**Example**    
$Training= \{\tau_1, \tau_2\}$  
$Column^{(1)}=\{\ \}$  
$Column^{(2)}=\{\tau_1 \}$  
$Column^{(3)}=\{\tau_2 \}$   
$Column^{(4)}=\{\tau_1, \tau_2 \}$  

<br>
$\mathbf {Max} \ \ \ \ 0.3x_1 + 0.7x_2 + 0.5x_3 + 0.6x_4$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \ \ x_1 + x_2 + x_3 + x_4 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ x_1, x_2, x_3, x_4 \in \{0,1\}$ 

Integer programming formulation
================================
**Issue**  
For Formulation 1 and Formulation 2, a dataset of size $n$ has $2^n$ columns

**Solution**  
Begin with a good selection of columns and use column generation to find improvements  

Outline
=========
1.  Motivation
2.  Methodology
    - Instance selection  
    - Previous work
    - Integer programming formulation
        - **Column generation**  
        - An approximation
3.  Experimental results  
4.  Impact 

Column generation
================================
transition: none
$Training \ \ = \{\tau_1, \tau_2, \tau_3 \}$  
$Column^{(2)} = \{ \tau_1 \}$  
$Column^{(6)} = \{ \tau_1, \tau_3 \}$



$\mathbf {Max} \ \ \ \ 0.6x_2 + 0.7x_6$

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ 1x_2 + 1x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 0x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 1x_6 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ 0 \le x_2, x_6$ 

***  

Column generation
================================
transition: none
$Training \ \ = \{\tau_1, \tau_2, \tau_3 \}$  
$Column^{(2)} = \{ \tau_1 \}$  
$Column^{(6)} = \{ \tau_1, \tau_3 \}$



$\mathbf {Max} \ \ \ \ 0.6x_2 + 0.7x_6$

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ 1x_2 + 1x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 0x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 1x_6 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ 0 \le x_2, x_6$ 

***  

<br><br><br><br><br><br><br>  
<font color="red">---></font> Solve and get shadow  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;price 


Column generation
================================
transition: none
$Training \ \ = \{\tau_1, \tau_2, \tau_3 \}$  
$Column^{(2)} = \{ \tau_1 \}$  
$Column^{(6)} = \{ \tau_1, \tau_3 \}$



$\mathbf {Max} \ \ \ \ 0.6x_2 + 0.7x_6$

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ 1x_2 + 1x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 0x_6 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 1x_6 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ 0 \le x_2, x_6$ 

***  

<br><br><br><br><br><br><br>  
<font color="red">---></font> $\pi^*=\{0.6, 0, 0.1\}$ 

Column generation
======================================
transition:none
**Price out problem**  

$\mathbf {Max} \ \ \ \  c^{new} - (0.6a_1+0a_2+0.1a_3)$ 

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1 + a_2 + a_3\le 3$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1, a_2, a_3 \in \{0,1\}$  
<small><small> 

| Column         | $a_1$ | $a_2$ | $a_3$ | $c^{new}$ |
|----------------|-------|-------|-------|-----------|
| $Column^{(1)}$ | 0     | 0     | 0     | 0.30      |
| $Column^{(3)}$ | 0     | 1     | 0     | 0.60      |
| $Column^{(4)}$ | 0     | 0     | 1     | 0.60      |
| $Column^{(5)}$ | 1     | 1     | 0     | 0.50      |
| $Column^{(7)}$ | 0     | 1     | 1     | 0.70      |
| $Column^{(8)}$ | 1     | 1     | 1     | 0.70      |
  
</small></small>

Column generation
======================================
transition:none
**Price out problem**  

$\mathbf {Max} \ \ \ \  c^{new} - (0.6a_1+0a_2+0.1a_3)$ 

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1 + a_2 + a_3\le 3$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1, a_2, a_3 \in \{0,1\}$  
<small><small> 

| Column         | $a_1$ | $a_2$ | $a_3$ | $c^{new}$ | Obj
|----------------|-------|-------|-------|-----------|-----
| $Column^{(1)}$ | 0     | 0     | 0     | 0.30      |0.30
| $Column^{(3)}$ | 0     | 1     | 0     | 0.60      |0.60
| $Column^{(4)}$ | 0     | 0     | 1     | 0.60      |0.50
| $Column^{(5)}$ | 1     | 1     | 0     | 0.50      |-0.10
| $Column^{(7)}$ | 0     | 1     | 1     | 0.70      |0.60
| $Column^{(8)}$ | 1     | 1     | 1     | 0.70      |0.00
  
</small></small>

Column generation
======================================
transition:none
**Price out problem**  

$\mathbf {Max} \ \ \ \  c^{new} - (0.6a_1+0a_2+0.1a_3)$ 

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1 + a_2 + a_3\le 3$  
$\ \ \ \ \ \ \ \ \ \ \ \ a_1, a_2, a_3 \in \{0,1\}$  
<small><small> 

| Column         | $a_1$ | $a_2$ | $a_3$ | $c^{new}$ | Obj
|----------------|-------|-------|-------|-----------|-----
| $Column^{(1)}$ | 0     | 0     | 0     | 0.30      |0.30
| **$Column^{(3)}$** | **0**     | **1**     | **0**     | **0.60**      |**0.60**
| $Column^{(4)}$ | 0     | 0     | 1     | 0.60      |0.50
| $Column^{(5)}$ | 1     | 1     | 0     | 0.50      |-0.10
| $Column^{(7)}$ | 0     | 1     | 1     | 0.70      |0.60
| $Column^{(8)}$ | 1     | 1     | 1     | 0.70      |0.00
  
</small></small>

Column generation
================================
transition: none
$Training \ \ = \{\tau_1, \tau_2, \tau_3 \}$  
$Column^{(2)} = \{ \tau_1 \}$  
$Column^{(6)} = \{ \tau_1, \tau_3 \}$
$Column^{(3)} = \{ \tau_2 \}$


$\mathbf {Max} \ \ \ \ 0.6x_2 + 0.7x_6 + 0.6x_3$

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ 1x_2 + 1x_6 + 0x_3\le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 0x_6 +1x_3\le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 1x_6 +0x_3\le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ 0 \le x_1, x_2, x_3$ 

***  



Column generation
================================
transition: none
$Training \ \ = \{\tau_1, \tau_2, \tau_3 \}$  
$Column^{(2)} = \{ \tau_1 \}$  
$Column^{(6)} = \{ \tau_1, \tau_3 \}$
$Column^{(3)} = \{ \tau_2 \}$


$\mathbf {Max} \ \ \ \ 0.6x_2 + 0.7x_6 + 0.6x_3$

$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \ \ 1x_2 + 1x_6 + 0x_3\le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 0x_6 +1x_3\le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_2 + 1x_6 +0x_3\le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ 0 \le x_1, x_2, x_3$
*** 
<br><br><br><br><br><br><br><br><br>
<font color="red">---></font> Column generation can <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;continue until the <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;optimal solution is found

Outline
=========
1.  Motivation
2.  Methodology
    - Instance selection  
    - Previous work
    - Integer programming formulation
        - Column generation  
        - **An approximation**
3.  Experimental results  
4.  Impact 

An approximation (or two)
==================
transition: none 
From the price out problem:  

$\mathbf {Max} \ \ \ \  c^{new} - \pi^Ta^{new}$  


An **approximation of $c^{new}$ based on $a^{new}$** is necesary to implement column generation

An approximation (or two)
==================
transition: none 
From the price out problem:  

$\mathbf {Max} \ \ \ \  c^{new} - \pi^Ta^{new}$  


An **approximation of classifier accuracy based on the contents of its training data** is necesary to implement column generation

An approximation (or two)
=====================

Two approximations are developed.  Each creates a ranking of the instances and assumes **columns with high ranking instances will have high accuracy**.

An approximation (or two)
==================

**Information approximation:**  

- $L_{\tau} = - \sum_{j=1}^{|y|} P \left( y_j|\tau \right) log \left(P_E \left(y_j|\tau \right) \right)$   
    - 0 for instances the classifier has mastered  
    - High for troubling instances
<br>  
              
- $$Bh_{\tau} =
\begin{cases} \ \ 0.1^{L_\tau},  & \text{if the classifier correctly classifies $\tau$} \\
-0.1^{L_\tau}, & \text{otherwise}  \\
\end{cases}$$  
    - 1 means the classifier is great at classifying the instance 
    - 0 means it is confused  
    - -1 means it is horrible

An approximation (or two)
==================

**Information approximation:**  

1. Sum $Bh_{\tau} \$ from a classifier built with all of the instances  
2. Sum $Bh_{\tau}\$ from a classifier built with a subset of the instances
3. Attribute the difference to the missing instances

***High ranking instances are those that decrease the value of $Bh$***

An approximation (or two)
==================
**Frequency approximation:**  

1.  Create initial columns
2.  Identify columns with high accuracy
3.  Count the occurences of instances in those columns

***High ranking instances are those that appear frequently***

An approximation (or two)
==================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/solution.png" width=700 height=500>   
</div> 

An approximation (or two)
==================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/solution.png" width=700 height=500>   
</div> 

**A greedy selection procedure is used to combine columns into a final selection of instances**

Integer programming formulation
===============================  
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

**Encourages the discovery of columns that have similar instances but higher accuracy** 

Integer programming formulation
================================
**Formulation 2**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

**Discovers columns that have higher accuracy than any previously discovered column** 

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - **Overall results**  
    - Overfitting
    - Successes  
    - Case study
4.  Impact  

Overall Results
=============================
|               Name | Instances | Attributes | Numeric | Nominal | Classes |
|-------------------:|-----------|------------|---------|---------|---------|
| Balance            | 625       | 4          | Yes     | No      | 3       |
| Credit             | 690       | 15         | Yes     | Yes     | 2       |
| Diabetes           | 768       | 8          | Yes     | No      | 2       |
| Ecoli              | 336       | 7          | Yes     | No      | 8       |
| Glass              | 214       | 9          | Yes     | No      | 6       |
| Horse              | 368       | 21         | Yes     | Yes     | 3       |
| Ionosphere         | 351       | 34         | Yes     | No      | 2       |
| LandSat*           | 444       | 36         | Yes     | No      | 6       |
| Spect              | 267       | 22         | No      | Yes     | 2       |
| Tic-tac-toe        | 958       | 9          | No      | Yes     | 2       |
| Waveform           | 800       | 21         | Yes     | No      | 3       |
| Wisc Cancer        | 699       | 9          | Yes     | No      | 2       |

Overall Results
============================

Instance selection is performed for:  

- Naive Bayes (NB)  
- Logistic Regression (LR)  
- Decision Tree (DT)  

Approach:  

- 20 replications
- Paired-t test for difference of mean before and after instance selection

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

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - Overall results 
    - **Overfitting**
    - Successes  
    - Case study
4.  Impact 

Overfitting
=======================
<br>
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/overfitting.png" width=900 height=400>
</div> 

Overfitting
=======================
<br>
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/notoverfitting.png" width=900 height=400>
</div> 

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - Overall results 
    - Overfitting
    - **Successes**  
    - Case study
4.  Impact 


Successes
===============================

The selected instances depend on

- The classifier
- The data

**Instance selection is used as a wrapper**
  - Outliers?  
  - Overlapping classes?  
  - Minority classes?  

Credit dataset
===============================
- Classify customers as having good or bad credit  
- Naive Bayes gained on average 5 percentage points
    
**Instances with extreme values were removed** 


Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/extreme.png" width=900 height=400>
</div>

Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/tree_before.png" width=900 height=400>
</div>

Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/tree_after.png" width=400 height=500>
</div>

Credit dataset
===============================  
incremental: true
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/a14.png" width=900 height=400>
</div>

 - **Allowed naive Bayes to focus on the majority of the instances**
 - **Perhaps benefitted from the easy to find seperation in A14 after instance selection**

Landsat dataset
==============================  
- Classify pixels of an image
- Logistic regression improved from 65% to 80%


Landsat dataset
==============================  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/pca1.png" width=400 height=500>
</div>





Integer programming formulation
===============================

**Old decison variables**  
- Should instance $i$ be included in the training data?
- $\ x_i \in \{0,1\} \ \forall \ i \in I$
- Example
    - $Training \ Data = \{\tau_1, \tau_2, ..., \tau_n   \}$
    - $If \ x_1 = 1, \ then \ \tau_1 \subseteq \ New \ Training \ Data$


