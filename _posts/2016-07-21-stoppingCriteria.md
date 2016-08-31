---
layout: post
title: A data driven stopping criterion for evolutionary instance selection
excerpt: "Evolutionary algorithm"

tags: [instance selection]
---
By: Walter Bennette

### Abstract
Instance based classifiers, such as k-Nearest Neighbors, predict the class value of a new observation based on some distance or similarity measure between the new instance and the stored training data. However, due to the required distance calculations, classifying new instances becomes computationally expensive as the number of training observations increases. Therefore, instance selection techniques have been proposed to improve instance based classifiers by reducing the number of training instances that must be stored to achieve adequate classification rates. Al- though other methods exist, an evolutionary algorithm has been used for instance selection with some of the best results in regard to data reduction and preserva- tion of classification accuracy. Unfortunately, the performance of the evolutionary algorithm for instance selection comes at the cost of longer computation times in comparison to classic instance selection techniques. In this work we introduce a new stopping criterion for the evolutionary algorithm which depends on the conver- gence of its fitness function. Experimentation shows that the new criterion results in less computation time while achieving comparable performance.  

***[Click here for the PDF!](/assets/evolutionaryStopping.pdf)**