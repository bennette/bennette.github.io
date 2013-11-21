
Solving a problem through integer programming IV
========================================================
author: Walter Bennette
date: 12 - 04 - 2013
transition: rotate

Steps to follow
========================================================
incremental: true
1. Identify the problem to be solved
2. Decide what constitutes a solution
3. Find constraints on valid solutions
4. Decide what makes the best solution
5. Construct an optimization model
6. Solve

Peculiar Car Rental
========================================================
incremental: true
- Owned and operated by Joe
- Joe is upset because he has started having to turn customers away
- Joe hopes he can earn more money by identifying the correct customers to turn away

 ![Here is Joe](IE312_applications-figure/sales-1-300x199.jpg)

Peculiar Car Rental has some peculiar rental practices
========================================================
incremental: true
- Reservations are placed Sunday for the week ahead
- Reservations are confirmed Sunday evening
- No cars are rented on Sunday
- There are only three cars to reserve 
- All cars are identical

Identify the problem to be solved
========================================================
incremental: true
What needs to be done?
- Choose which reservations to honor
- Do so in a way that maximizes profit

Decide what constitutes a solution
========================================================
incremental: true

- Need to assign cars to customers
    - Car $i = 1, ... , m$
    - Customer $j = 1, ... , n$
- Decision variable
    - $x_{ij} \in \{0, 1\}$
        - If $x_{ij} = 1$, customer $j$ gets car $i$ 
        - If $x_{ij} = 0$, customer $j$ did not get a car

Find constraints on valid solutions
========================================================
incremental: true
- A customer $j$, should get no more than one car $i$
    - $\sum\limits_{i = 1}^{m} x_{ij} \leq 1 \space\space \space \space j = 1, ... , n$
    - For three cars and two customers
        - $x_{1, 1} + x_{2, 1} + x_{3, 1} \leq 1$
        - $x_{1, 2} + x_{2, 2} + x_{3, 2} \leq 1$

Find constraints on valid solutions
========================================================
incremental: true
- A car $i$, should be assigned to no more than one customer $j$, at a time
- Need a concept of time
    - Can break week into $H \space$ time slots
    - Then define $J_t$ to be the set of customers, $j$, that need a car, $i$, at time $t$.
        - $p_1 = \{ M, T \}$
        - $p_2 = \{ M \}$
        - $J_M = \{Customer 1, Customer 2 \}$

Find constraints on valid solutions
========================================================
incremental: true
- A car $i$, should be assigned to no more than one customer $j$, at a time, $J_t$
- $\sum\limits_{j\space \in \space J_t} x_{ij} \leq 1 \space\space \space i = 1, ... , m, \space\space \space t = 1, ..., H$
    - For two cars and two customers, $p_1 = \{ M, T \}, p_2 = \{ M \}$.
        - $x_{1, 1} + x_{1, 2} \leq 1 \space$  <-Car 1, Monday
        - $x_{2, 1} + x_{2, 2} \leq 1 \space$  <-Car 2, Monday

Decide what makes the best solution
========================================================
incremental: true
- The answer should maximize the profit of Peculiar Car Rental
    - Car $i$ costs $\pi_i$ to rent per day
    - $\pi_ix_{ij}$ 
- $max \sum\limits_{i = 1}^{m} \sum\limits_{j = 1}^{n} \space \pi_i x_{ij}$
    - For two cars and two customers
    - $max \space \pi_1x_{1,1} + \pi_1x_{1,2} + \pi_2x_{2,1} + \pi_2x_{2,2}$

Construct an optimization problem
========================================================
- We have decision variables
- We have constraints
- We have an objective function

>  $max \sum\limits_{i = 1}^{m} \sum\limits_{j = 1}^{n} \space \pi_i x_{ij}$  
>  $s.t$  
>>  $\sum\limits_{i\space= \space 1}^{m} x_{ij} \leq 1 \space\space \space \space j = 1, ... , n$  
>>  $\sum\limits_{j\space \in \space J_t} x_{ij} \leq 1 \space\space \space i = 1, ... , m, \space\space \space t = 1, ..., H$  
>>  $x_{ij} \in \{0, 1\}$

Solve
========================================================
Lingo can solve this for us.

Example
========================================================
 Joe wants us to give it a go!
 
 ![Here is Joe](IE312_applications-figure/used-car-salesman-seo.jpg)








Thanks
========================================================
  ![Here is Joe](IE312_applications-figure/Sleazy_Used_Car_Salesman_Marketing_Copywriting_Guaranteed.jpg)





