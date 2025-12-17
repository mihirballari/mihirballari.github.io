# 7.3 Moments of The Number of Events that Occur

<!-- PAGETOC -->


For given events $A_{1},A_{2},\dots A_{n}$ to find $E[X]$ where $X$ is the number of these events that occur, we usually begin by defining an indicator variable $I_{i}$ for an event $A_{i}$ such that 
$$
I_{i} = 
\begin{cases}
1,\qquad  & A_{i}\text{ occurs} \\
0,\qquad  & A_{i}\text{ does not occur} 
\end{cases}
$$
because 
$$
X = 
\sum_{i=1}^{n} I_{i}
$$
and we obtain 
$$
E[X] = E\left[ \sum_{i=1}^{n} I_{i} \right] =\sum_{i=1}^{n} E[I_{i}] =\sum_{i=1}^{n} P(A_{i})
$$
