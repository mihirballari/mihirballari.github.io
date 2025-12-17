<!-- PAGETOC -->

Analyzing the Quick-Sort Algorithm
================================================================
How to Quick-Sort?
---------------------------------------------------------------------------------------
Suppose we are presented with a set of $n$ different values 
$$
x_{1},x_{2},x_{3},\dots x_{n}
$$
that we desire to arrange in increasing order or as it is more commonly stated, to *sort* them. An efficient procedure for this task is the quick-sort algorithm which is defined as follows. When $n=2$ the algorithm compares the two values then puts them in the appropriate order. When $n\geq 2$, one of the elements is randomly chosen; lets call it $x_{i}$. 

All the other values are compared to $x_{i}$. Those smaller than $x_{i}$ are put in a bracked to the left of $x_{i}$ and all the values that are larger than $x_{i}$ are put in a bracked to the right of $x_{i}$. The algorithm then repeats itself on these brackets and continues until all values have been sorted. 

For instance suppose we wanted to sort the following ten distinct values
$$
\{ 5, 9, 3, 10, 11, 14, 8, 4, 17, 6  \}
$$
We begin by choosing one of the values at random (that is, each value has a $\frac{1}{10}$ chance of being chosen). Suppose 10 is picked randomly so we have that $x_{i}=10$. We then compare every other value to $x_{i}=10$, putting in a bracked to the left of 10 all the values that are smaller than 10 and the larger ones go in a bracked to the right of 10. After the first iteration we would see something like 
$$
\{ 5, 9, 3,8,4,6\}, \quad 10,\quad \{ 11, 14, 17  \}
$$
Then we focus on the bracketed set that contains more than a single value and randomly choose one of its values at random. Suppose we pick the set to the left of 10 and pick 6. Comparing it to every other value in the set $\{ 5, 9, 3,8,4,6\}$ and making the appropriate brackets again, the second iteration results in the following
$$
\{ 5, 3,4\},\quad 6,\quad \{ 9,8 \}, \quad 10,\quad \{ 11, 14, 17  \}
$$Consider the leftmost bracket, then lets say we randomly find that $x_{i}=4$. Applying the quick-sort procedure to this we find that our values now look like
$$
\{ 3 \}, \quad 4,\quad \{ 5 \},\quad 6,\quad \{ 9,8 \}, \quad 10,\quad \{ 11, 14, 17  \}
$$
We repeat this until there is no bracketed set that contains more than 1 value so our final iteration of the algorithm should eventually leave us with $3,4,5,6,8,9,10,11,14,17$. 


Deriving the Big-$O$ for Quick-Sort Using Probability Theory
---------------------------------------------------------------------------------------

Let $\mathbb{X}$ be a random variable that denotes the number of comparisions that it takes the quick-sort algorithm to sort $n$ distinct numbers. Then the mean $E[\mathbb{X}]$ would be a measure of the *effectiveness* of this algorithm. To compute $E[\mathbb{X}]$ we first need to express $\mathbb{X}$ as a sum of other random variables. 

Lets begin by naming the values that need to be sorted as follows. We let 1 stand for the smallest, let 2 stand for the next smallest and so on. Then for $i,\ j$ such that 
$$
1\leq i<j\leq n
$$
we define the joint probability mass function $I(i,j)$ to be 
$$
I(i,j)=
\begin{cases}
1,\quad  & \text{if }i\text{ and }j\text{ are directly compared} \\
0,\quad  & \text{otherwise}
\end{cases}
$$
With this definition, it follows that 
$$
\mathbb{X} = 
\sum_{i=1}^{n-1}\sum_{j=i+1}^{n} I(i,j)
$$
implying that 
$$
\begin{aligned}
E[\mathbb{X}]  & = E \left[ \sum_{i=1}^{n-1}\sum_{j=i-1}^{n} I(i,j)
 \right]  \\
 \\
 &  =  \sum_{i=1}^{n-1}\sum_{j=i+1}^{n} E[I(i,j)] \\
 \\
 & = \sum_{i=1}^{n-1} \sum_{j=i+1}^{n} P \{ i\text{ and }j\text{ are ever compared} \}
\end{aligned}
$$
To determine the probability that $i$ and $j$ are ever compared, note that the values 
$$
i,i+1,\dots ,j-1,j
$$
will initially be in the same bracked (since all values start off in the same bracked) and will remain in that bracked if the number $x_{i}$ chosen randomly is not between $i$ and $j$ 
$$
x_{i}\not\in(i,j)
$$
For instance, if the comparision number is larger than $j$, then al the values $i,i+1,\dots ,j-1,j$ will go in a bracked to the left of the comparision number $x_{i}$. Similarly they will go to a bracket on the right if $x_{i}<i$. 

Thus all the values $i,i+1,\dots ,j-1,j$ will remain in the same bracked untill the first time that one of the values is chosen ie until $x_{i}\in \{ i,i+1,\dots ,j-1,j \}$. At that point, all the other values between $i$ and $j$ will be compared with $x_{i}$. 

Now if the comparision value $x_{i}$ is neither $i$ nor $j$, then upon comparision with it, $i$ will go to the left bracked and $j$to the right and thus $i$ and $j$ would be in different brackets so they never get compared. 

Conversely, if the comparision value of the set $\{ i,i+1,\dots ,j-1,j \}$ is either $i$ or $j$, then there will be a direct comparision between $i$ and $j$. Given that the comparision value $x_{i}$ is between $i$ and $j$, it follows that it is equally likely to be any of these $j-i+1$ values. Thus the probability that the value $x_{i}$ we pick randomly is either $i$ or $j$ is 
$$
\frac{2}{(j-i+1)}
$$
So we can conclude that 
$$
P \{ i\text{ and }j\text{ are ever compared} \} = \frac{2}{j-i+1}
$$
and 
$$
E[\mathbb{X}] = \sum_{i=1}^{n-1} \sum_{j=i+1}^{n} \frac{2}{j-i+1}
$$

Approximating $E[\mathbb{X}]$ for large $n$ 
----------------------------------------------------------------------------------------------------------------

To obtain a rough approximation of the magnitutude of $E[\mathbb{X}]$ when $n$ is large, we can approximate the sums by integrals. So we compute 
$$
\begin{aligned}
\sum_{j=i+1=1}^{n} \frac{2}{j-i+1}  & \approx \int_{i+i}^{n} \frac{2}{j-i+1} \, dx  \\
 \\
 & = 2\log(x-i+1)\biggr|^{n}_{i+1} \\
 \\
 & =2\log (n-i+1)-2\log(2) \\ \\

 & \approx 2\log(n-i+1) \\
\end{aligned}
$$
Thus 
$$
\begin{aligned}
E[\mathbb{X}]  & \approx \sum_{i=1}^{n-1} 2\log(n-i+1) \\
 \\
 & \approx 2 \int_{1}^{n-1} \log(n-x+1) \, dx  \\
 \\
 & =2\int_{2}^{n} \log(y) \, dy  \\
 \\
 & =2(y\log(y)-y)\biggr|^{n}_{2} \\
 \\
 & \approx 2n\log(n)
\end{aligned}
$$
We find that when $n$ is large, the quick-sort algorithm requires, on average, approximately 
$$
2n\log(n)
$$
comparisions to sort $n$ distinct values. 


-17 01.16.35.png" http://127.0.0.1:5000/ocr
{"latex":"\\scriptstyle\\stackrel{\\mathrm{so}}{\\ln(\\mathrm{ansmaransonsta})}{\\scriptstyle\\frac{\\left\\|\\Delta t_{1}u}{t_{2}u}}}\\;\\;\\;\\stackrel{\\left\\|i\\right\\|}{\\scriptstyle\\left.\\frac{\\left\\|\\Delta t_{1}}{t_{2}\\left\\|\\Delta\\right\\|}}"}
mihirballari@Mihirs-MacBook-Pro ~ % 