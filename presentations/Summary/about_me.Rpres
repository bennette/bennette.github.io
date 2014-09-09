Instance selection
======================================================== 
author: Walter Bennette  
date: 08-25-2014


Take away message
================

You can improve the accuracy of model-based classifiers by learning from carefully selected instances.


Motivation
================================================

- Aspects of a training dataset may make it difficult to build/induce/learn an accurate classifier  


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


Experimental results
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

Experimental results
============================

Instance selection is performed for:  

- Naive Bayes (NB)  
- Logistic Regression (LR)  
- Decision Tree (DT)  

Approach:  

- 20 replications
- Paired-t test for difference of accuracy before and after instance selection

Experimental results
=============================
transition: none

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/results2.png" width=500 height=1200>   
</div>  
****  
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/results1.png" width=500 height=1200>
</div>  

Experimental results
==============================

<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/compare.png" width=800 height=650>
</div>  


Case study
==============================

A Population-based Assessment of Perioperative Mortality After Nephroureterectomy for Upper-tract Urothelial Carcinoma 

***(I'll be calling this NU for UTUC!!)***  


Case study
==============================
<div align="center">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/nephro.jpg" width=650 height=500>
</div>  
<small><small><small>http://www.urologistraj.com/Laparoscopic-Nephroureterectomy.php</small></small></small>



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

Case study
==============================
Confusion matrix of test data before instance selection

   <div align="left">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/con1.png" width=300 height=200>
</div> 

-  90% test accuracy  
-  Uninformative!  
-  Can use instance selection to maximize class balance accuracy

Case study
==============================   
Confusion matrix of test data after instance selection 
<div align="left">
<img class="decoded" src="http://bennette.github.io/presentations/Dissertation/images/con2.png" width=300 height=200>
</div> 

-  88% test accuracy  
-  Learn something about mortality  


Future work
==============================

1. Address overfitting  
2. Scale up for larger datasets  
3. Optimize other measures  
   - Imbalanced data  
   - Model simplicity







































