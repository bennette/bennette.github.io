
Instance selection for model-based classifiers
========================================================  
author: Walter Bennette
date: 04-15-2014

Follow along
========================================================

[http://bennette.github.io/presentations/](http://bennette.github.io/presentations/) 
 
Take away message
================
Model-based classifiers with improved accuracy can be created by learning from carefully selected instances.

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">1 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results  
4.  Conclusion

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">2 / 68</span>
</small></small></small></small>

Motivation
=======================

A model-based classifier is an abstraction of data used to make predictions
- Retail
- Healthcare
- Finance

Better classifiers are beneficial
- Make fewer missclassifications
- Gain useful knowledge when analyzing the classifier

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">3 / 68</span>
</small></small></small></small>
Motivation
================================================

- Aspects of a training dataset may make it difficult to build/induce/learn an accurate classifier  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">4 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap1.png" width=700 height=400>
</div>

Where should these classes be separated?

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">5 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap2.png" width=700 height=400>
</div>

Where should these classes be separated?

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">5 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap3.png" width=700 height=400>
</div>

Where should these classes be separated?

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">5 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may overlap  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/overlap4.png" width=700 height=400>
</div>

Where should these classes be separated?  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">5 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers1.png" width=700 height=400>
</div>

Should these outliers be accommodated?  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">6 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Classes may have outliers 

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/outliers2.png" width=700 height=400>
</div>

Should these outliers be accommodated?  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">6 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority1.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">7 / 68</span>
</small></small></small></small>

Motivation
================================================
transition: none
Minority class

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/minority2.png" width=700 height=400>
</div>

Does capturing the minority class introduce unnecessary structure?
 
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">7 / 68</span>
</small></small></small></small>

Motivation
================================================

- We believe that selecting which instances to learn from can improve the accuracy of a classifier.  This is called ***instance selection***!

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">8 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology
    - **Instance selection**  
    - Previous work
    - Integer programming formulation
3.  Experimental results  
4.  Conclusion

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">9 / 68</span>
</small></small></small></small>

Instance selection
=============================

- Instance selection addresses issues in the training data by creating a subset of the original data

- The intention is that the classification algorithm will perform better when learning from the selected/reduced data set

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">10 / 68</span>
</small></small></small></small>

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain1.png" width=900 height=500>
</div>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">11 / 68</span>
</small></small></small></small>

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain2.png" width=900 height=500>
</div>  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">11 / 68</span>
</small></small></small></small>

Instance selection
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain3.png" width=900 height=500>
</div>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">11 / 68</span>
</small></small></small></small>

Instance selection
=============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Data_Mining_Group/Images/explain4.png" width=800 height=450>
</div>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">12 / 68</span>
</small></small></small></small>

Instance selection
===============


- A combinatorial optimization problem (decide to include or not to include each instance) 
- For a dataset of size $n$ there are $2^n$ solutions
- There is no closed form objective function to maximize classifier accuracy

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">13 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology
    - Instance selection  
    - **Previous work**
    - Integer programming formulation
3.  Experimental results  
4.  Conclusion  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">14 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">15 / 68</span>
</small></small></small></small>

Previous work
============================= 
***Made sense for model-based classifiers***   
<br>
${\mathbf {Max} \ \ \ \ Classifier \ Accuracy \\ \mathbf {s.t}  \\ \ \ \ \ \ \ \ \ \ \ \ \ \ x_i \in \{0,1\} \ \forall \ i \in I}$  
<br>  
* This is a combinatorial optimization problem
* There are $2^n$ possible solutions  
* There is no closed form for the objective function

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">16 / 68</span>
</small></small></small></small>

Previous work
=============================   
- A **VAST** majority rely on evolutionary algorithms to find a solution    

- Other optimization problems look similar to instance selection if **the problem is reformulated**.  This allows us to **take advantage of optimization theory**.

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">17 / 68</span>
</small></small></small></small>
 
Previous work
============================
<small><small><small><small> C. Reeves, S. Taylor, Selection of training sets for neural networks by a genetic algorithm, Parallel Problem Solving from Nature- PSSN V, (1998) 633-642.  <br>    
C. Reeves, D Bush, Using genetic algorithms for training data selection in RBF networks, in: Instance Selection and Construction for Data Mining, H. Liu and H. Motoda (Eds), Kluwer, Norwell, MA, (2001) pp.339–356.  <br>  
T. Endou, Q. Zhao, Generation of Comprehensible Decision Trees Through Evolution of Training Data, in proceedings of the 2002 Congress on Evolutionary Computation, (2002) 1221-1225.  <br>    
J. Cano, F. Herrera, M. Lozano, Using Evolutionary Algorithms as Instance Selection for Data Reduction in KDD: An Experimental Study, IEEE Transactions on Evolutionary Computation, 7(6) (2003) 561-575.  <br>  
J. Cano, F. Herrera, M. Lozano, Evolutionary Stratified Training Set Selection for Extracting Classification Rules with Trade off Precision-Interpretability, Data & Knowledge Engineering, 60 (2006) 90-108.  <br>    
N. Garcia-Pedrajas, Evolutionary computation for training set selection, WIREs Data Mining and Knowledge Discovery, 1 (2011) 512-523.  <br>  
Kim K-J, Artificial neural networks with evolutionary instance selection for financial forecasting, Expert Syst Appl, 30 (2006) 519-526.   <br>  
Wu, Shuing. Optimal instance selection for improved decision tree. (2007 Dissertation)    <br>  
Walter Bennette, Instance selection for simplified decision trees through the generation and selection of instance candidate subsets. (2009 Master’s thesis)  <br>  
Walter Bennette, Sigurdur Olafsson, Model based classifier improvement through the generation and selection of instance candidate subsets, Data and Knowledge Engineering (under revision). </small></small></small></small>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">18 / 68</span>
</small></small></small></small>
 
Outline
=========
1.  Motivation
2.  Methodology
    - Instance selection  
    - Previous work
    - **Integer programming formulation**
3.  Experimental results  
4.  Conclusion 
  
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">19 / 68</span>
</small></small></small></small>  
  
Integer programming formulation
===============================

**New decision variables**  
- Should the $j^{th}$ subset (column) of instances be included in the training data?  
- $x_j \in \{0,1\} \ \forall \ j \in J$
- Example
    - $Training \ Data = \{\tau_1, \tau_2, ..., \tau_n   \}$
    - $Column^{(1)} = \{\tau_1, \tau_5, \tau_6 \}$  
    - $Column^{(1)} \ accuracy= c_1$
    - $\ If \ x_1 = 1, \ then \ \{\tau_1, \tau_5, \tau_6 \} \subseteq \ New \ Training \ Data$
    
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">20 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">21 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">21 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">21 / 68</span>
</small></small></small></small>


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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">21 / 68</span>
</small></small></small></small>

Integer programming formulation
================================
**Example**    
$Training= \{\tau_1, \tau_2\}$  
$Column^{(1)}=\{\ \}$  
$Column^{(2)}=\{\tau_1 \}$  
$Column^{(3)}=\{\tau_2 \}$   
$Column^{(4)}=\{\tau_1, \tau_2 \}$  


$\mathbf {Max} \ \ \ \ 0.3x_1 + 0.7x_2 + 0.5x_3 + 0.6x_4$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \ \ 0x_1 + 1x_2 + 0x_3 + 1x_4 \le 1$  
$\ \ \ \ \ \ \ \ \ \ \ \ 0x_1 + 0x_2 + 1x_3 + 1x_4 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ x_1, x_2, x_3, x_4 \in \{0,1\}$ 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">22 / 68</span>
</small></small></small></small>


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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">23 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">23 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">23 / 68</span>
</small></small></small></small>

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
 
 <small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">23 / 68</span>
</small></small></small></small>
 
Integer programming formulation
================================
**Example**    
$Training= \{\tau_1, \tau_2\}$  
$Column^{(1)}=\{\ \}$  
$Column^{(2)}=\{\tau_1 \}$  
$Column^{(3)}=\{\tau_2 \}$   
$Column^{(4)}=\{\tau_1, \tau_2 \}$  

$\mathbf {Max} \ \ \ \ 0.3x_1 + 0.7x_2 + 0.5x_3 + 0.6x_4$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \ \ x_1 + x_2 + x_3 + x_4 \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ \ x_1, x_2, x_3, x_4 \in \{0,1\}$ 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">24 / 68</span>
</small></small></small></small>

Integer programming formulation
================================
**Issue**  
For Formulation 1 and Formulation 2, a dataset of size $n$ has $2^n$ columns

**Solution**  
1.  Begin with a good set of initial columns      
2.  Use column generation to find improvements    
 


<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">25 / 68</span>
</small></small></small></small>

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
4.  Conclusion   
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">26 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">27 / 68</span>
</small></small></small></small>

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
<font color="red">---></font> Solve and get dual  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;variables 


<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">27 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">27 / 68</span>
</small></small></small></small>

Column generation
======================================
transition:none
**Price out problem**  
<br>  
$\mathbf {Max} \ \ \ \  c^{new} - \pi^*a^{new}$  
<br>
$\mathbf {s.t}$  
$\ \ \ \ \ \ \ \ \ \ \sum_{i \in I} a_i^{new} \le G$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ a_i^{new} \in \{0,1\} \ \forall i \in I$

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">28 / 68</span>
</small></small></small></small>



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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">29 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">29 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">29 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">30 / 68</span>
</small></small></small></small>


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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">30 / 68</span>
</small></small></small></small>

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
4.  Conclusion  
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">31 / 68</span>
</small></small></small></small>
An approximation (or two)
==================
transition: none 
From the price out problem:  

$\mathbf {Max} \ \ \ \  c^{new} - \pi^*a^{new}$  


An **approximation of $c^{new}$ based on $a^{new}$** is necessary to implement column generation

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">32 / 68</span>
</small></small></small></small>

An approximation (or two)
==================
transition: none 
From the price out problem:  

$\mathbf {Max} \ \ \ \  c^{new} - \pi^*a^{new}$  


An **approximation of classifier accuracy based on the contents of its training data** is necessary to implement column generation

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">32 / 68</span>
</small></small></small></small>

An approximation (or two)
=====================

Two approximations are developed.  Each creates a ranking of the instances and assumes **columns with high ranking instances will have high accuracy**.

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">33 / 68</span>
</small></small></small></small>  

An approximation (or two)
==================
**Frequency approximation:**  

1.  Consider existing columns
2.  Identify columns with high accuracy
3.  Count the occurrences of instances in those columns

***High ranking instances are those that appear frequently***  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">34 / 68</span>
</small></small></small></small>

An approximation (or two)
==================

**Information approximation:**  

- $L_{\tau} = - \sum_{j=1}^{|y|} P \left( y_j|\tau \right) log \left(P_E \left(y_j|\tau \right) \right)$   
    - 0 for instances the classifier has mastered  
    - High for troubling instances
<br>  
              
- $$Bh_{\tau} =
\begin{cases} \ \ 0.1^{L_\tau},  & \text{if the classifier correctly classifies $\tau$} \\
(-0.1)^{L_\tau}, & \text{otherwise}  \\
\end{cases}$$  
    - 1 means the classifier is great at classifying the instance 
    - 0 means it is confused  
    - -1 means it is horrible
    
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">35 / 68</span>
</small></small></small></small>

An approximation (or two)
==================

**Information approximation:**  

1. Build classifier from all the instances, calculate and sum $Bh$ 
2. Build classifier from a subset of the instances, calculate and sum $Bh$ 
3. Attribute the difference between the two to the missing instances

***High ranking instances are those that decrease the value of $Bh$***  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">36 / 68</span>
</small></small></small></small>

An approximation (or two)
==================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/solution.png" width=700 height=500>   
</div> 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">37 / 68</span>
</small></small></small></small>

An approximation (or two)
==================
transition: none
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/solution.png" width=700 height=500>   
</div> 

**A greedy selection procedure is used to combine columns into a final selection of instances**  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">37 / 68</span>
</small></small></small></small>

Integer programming formulation
===============================  
**Formulation 1**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}a_{ij}x_j \le 1 \ \ \forall \ i \in I$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

**Encourages the discovery of columns that have similar instances but higher accuracy** 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">38 / 68</span>
</small></small></small></small>

Integer programming formulation
================================
**Formulation 2**  

$\mathbf {Max} \ \ \ \sum_{j \in J}c_jx_j$

$\mathbf {s.t}$

$\ \ \ \ \ \ \ \ \ \ \sum_{j \in J}x_j \le 1$  
<br>
$\ \ \ \ \ \ \ \ \ \ \ x_j \in \{0,1\} \ \ \forall \ j \in J$ 

**Discovers columns that have higher accuracy than any previously discovered column**  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">39 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - **Overall results**  
    - Overfitting
    - Successes  
    - Case study
4.  Conclusion  
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">40 / 68</span>
</small></small></small></small>

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

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">41 / 68</span>
</small></small></small></small>

Overall Results
============================

Instance selection is performed for:  

- Naive Bayes (NB)  
- Logistic Regression (LR)  
- Decision Tree (DT)  

Approach:  

- 20 replications
- Paired-t test for difference of accuracy before and after instance selection

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">42 / 68</span>
</small></small></small></small>

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
4.  Conclusion 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">44 / 68</span>
</small></small></small></small>

Overfitting
=======================
<br>
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/overfitting.png" width=900 height=400>
</div> 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">45 / 68</span>
</small></small></small></small>

Overfitting
=======================
<br>
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/notoverfitting.png" width=900 height=400>
</div> 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">46 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - Overall results 
    - Overfitting
    - **Successes**  
    - Case study
4.  Conclusion 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">47 / 68</span>
</small></small></small></small>

Successes
===============================

The selected instances depend on

- The classifier
- The data

**Instance selection is used as a wrapper**
  - Outliers?  
  - Overlapping classes?  
  - Minority classes?  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">48 / 68</span>
</small></small></small></small>

Credit dataset
===============================
- Classify customers as having good or bad credit  
- Naive Bayes gained on average 5 percentage points
    
**Instances with extreme values were removed** 

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">49 / 68</span>
</small></small></small></small>

Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/extreme.png" width=900 height=400>
</div>  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">50 / 68</span>
</small></small></small></small>

Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/tree_before.png" width=900 height=400>
</div>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">51 / 68</span>
</small></small></small></small>

Credit dataset
===============================  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/tree_after.png" width=300 height=400>
</div>  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">52 / 68</span>
</small></small></small></small>

Credit dataset
===============================  
incremental: true
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/a14.png" width=900 height=400>
</div>

 - **Allowed naive Bayes to focus on the majority of the instances**
 - **Perhaps benefitted from the easy to find seperation in A14 after instance selection**

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">53 / 68</span>
</small></small></small></small>

Landsat dataset
==============================  
- Classify pixels of an image
- Logistic regression improved from 65% to 80%

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">54 / 68</span>
</small></small></small></small>

Landsat dataset
==============================  

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/pca1.png" width=400 height=500>
</div>

***

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/pca2.png" width=400 height=500>
</div>  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">55 / 68</span>
</small></small></small></small>

Landsat dataset
==============================
incremental: true
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">56 / 68</span>
</small></small></small></small>
**Number of test instances misclassified**

|                         | Class1 | Class2 | Class3 | Class4 | Class5 | Class6 | Total |
|-------------------------|---------|---------|---------|---------|---------|---------|-------|
| Original Training Data  | 5       | 9       | 11      | 9       | 8       | 9       | 51    |
| With Instance Selection | 1       | 3       | 3       | 14      | 5       | 2       | 28    |

-  The ability to classify the minority class 4 is likely sacrificed in an effort to make it easier to separate the remaining classes




Successes
==============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/compare.png" width=800 height=650>
</div>  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">57 / 68</span>
</small></small></small></small>

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
    - Overall results 
    - Overfitting
    - Successes 
    - **Case study**
4.  Conclusion

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">58 / 68</span>
</small></small></small></small>

Case study
==============================

A Population-based Assessment of Perioperative Mortality After Nephroureterectomy for Upper-tract Urothelial Carcinoma 

***(I'll be calling this NU for UTUC!!)***  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">59 / 68</span>
</small></small></small></small>

Case study
==============================
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/nephro.jpg" width=650 height=500>
</div>  
<small><small><small>http://www.urologistraj.com/Laparoscopic-Nephroureterectomy.php</small></small></small>

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">60 / 68</span>
</small></small></small></small>

Case study
==============================

Data: SEER database 
<br>  
Attributes: age, gender, histopathology, extraglandular<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; involvement, tumor grade, tumor size, and<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mortality
<br>  
Patients: 2,328 (9% mortality)
<br>  
Classification task: predict mortality
<br>  
Classifier: logistic regression

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">61 / 68</span>
</small></small></small></small>


Case study
==============================
Confusion matrix of test data before instance selection

   <div align="left">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/con1.png" width=300 height=200>
</div> 

-  90% test accuracy  
-  Uninformative!  
-  Can use instance selection to maximize class balance accuracy

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">62 / 68</span>
</small></small></small></small>

Case study
==============================   
Confusion matrix of test data after instance selection 
<div align="left">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/con2.png" width=300 height=200>
</div> 

-  88% test accuracy  
-  Learn something about mortality  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">63 / 68</span>
</small></small></small></small>

Case study
===============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/case1.png" width=550 height=600>
</div> 


<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">64 / 68</span>
</small></small></small></small> 

Outline
=========  
1.  Motivation
2.  Methodology 
3.  Experimental results
4.  **Conclusion**  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">65 / 68</span>
</small></small></small></small> 

Conclusion
===============================
- Reformulated instance selection as an integer program  

- **Model-based classifiers with improved accuracy can be created by learning from carefully selected instances** (because classifiers are imperfect)

- Instance selection is useful for actual classification problems and is a competitive technique

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">66 / 68</span>
</small></small></small></small>

Future work
==============================  

Obvious  
- Improve classifier accuracy estimate  
- Address overfitting  
- Accommodate bigger datasets  

Interesting  
- Optimize other metrics  
    - Imbalanced data  
    - Model simplicity  
    
<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">67 / 68</span>
</small></small></small></small>

Questions?
======================
Walter Bennette  
bennette@iastate.edu  

<small><small><small><small>
<span style ="position:absolute;right:0;bottom:0">68 / 68</span>
</small></small></small></small>


Extras (SVM)
===========================
e1071

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/svm_show.png" width=900 height=550>
</div> 

Extras (Wisconsin Breast Cancer)
======================

train SVM: 98%  
test SVM:  95%

train NB/IS: 98%   
test NB/IS:  95%

Extras (Wisconsin Breast Cancer)
===========================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/wisc_svm.png" width=900 height=550>
</div> 

Extras (Wisconsin Breast Cancer)
===========================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/wisc IS.png" width=900 height=550>
</div> 

Extras (Wisconsin Breast Cancer)
===========================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/wisc_all.png" width=900 height=550>
</div> 

Extras (Ionosphere)
===========================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/IS_both.png" width=700 height=550>
</div> 



