# 3.7 Functions of Random Variables

<!-- PAGETOC -->


Why is a function of a random variable also a random variable? that is if $X$ is a $\text{r.v}$ then $X^{2},e^{X}$ and $\sin X$ are also random variables, as is $g(X)$ for any function $g:\mathbb{R}\to \mathbb{R}$ 

## Ex. 2 Basketball Teams 

Suppose two teams $A$ and $B$ play a 7 game match. Let $X$ denote the number of wins for A so $X \sim \mathrm{Bin}(7, 1 / 2)$ (if the teams are evenly matched and games are independent).

Let $g(X)=7-x$ is the number of wins for team $B$ and $h(X)$ is the indicator of team A winning the majority of games. Since $X$ is an $\text{r.v}$, both $g(X)$ and $h(X)$ are also $\text{r.v's }$. 

## Functions of an $\text{r.v}$ 

For an experiment with sample space $S$, $\text{r.v}$ $X$ and a function $g:\mathbb{R}\to \mathbb{R}$, $g(X)$ is the $\text{r.v}$ that maps $s\to g(X(s))$ for all $s \in S$ 

Given a discrete $\text{r.v}$ $X$ with a known PMF, how do we find the PMF of $Y=g(X)$? in the case where $g$ is a 1-1 function $\implies$ the support of $Y$ is the set of all $g(x)$ with $x$ in the support of $X$ and 
$$
P(Y=g(x))=P(g(X)=g(x)) =P(X=x)
$$
## Ex. Random Walk 

A particle moves $n$ steps on a number line starting at 0 and at each step it moves 1 unit to the right or left with equal probabilities. Assuming all steps are independent, let $Y$ 
be the position after $n$ steps. Find the PMF of $Y$ 

$\implies$  Each step is a Bernoulli trial where 
$$
\begin{cases}
1,\quad  & \text{step taken right} \\
0,\quad  & \text{step taken left}
\end{cases}
$$
Then the number of steps the particle takes to the right is a $\mathrm{Bin}\left( n, \frac{1}{2} \right)$ $\text{r.v}$, say $X$ 

If $X=j$ then the particle has taken $j$ steps to the right and $n-j$ steps to the left and its final position is 
$$
j-(n-j)=2j-n
$$
So we can express $Y$ as a 1-1 function of $X$ as 
$$
Y=2X-n
$$
since $X$ takes values in $\{ 0,1,2\dots,n \}$, $Y$ must assume values in $\{ -n, 2-n, 4-n\dots ,n \}$ 
The PMF of $Y$ can be found from the PMF of $X$ 
$$
P(Y=k) =P(2X-n=k)=P\left( X=\frac{n+k}{2} \right)
$$
recall that $X\sim \mathrm{Bin}$ so we have 
$$
P(Y=k) = \begin{pmatrix}
n \\
\frac{n+k}{2} 
\end{pmatrix} 
\left( \frac{1}{2} \right)^{n}
$$
if $k$ is an even integer and $k \in[\pm n]$ such that $n+k$ is an even number 


## PMF of $g(X)$

Let $X$ be a discrete $\text{r.v}$ and $g:\mathbb{R}\to \mathbb{R}$. Then the support of $g(X)$ is the set of all $y$ such that $g(x)=y$ for atleast one $x$ in the support of $X$, and the PMF of $g(X)$ is 
$$
P(g(X)=y)=\sum_{x:g(x)=y} P(X=x)
$$
for all $y$ in the support of $g(X)$

## Ex. Random Walk Continued ...

Let $D$ be the particle's distance from the origin after $n$ steps. Assume $n$ even. Find the PMF of $D$ 

$\implies$ Write $D=|Y|$. Which is a function of $Y$ but is not 1-1. The event that $D=0$ is the same as the event $Y=0$. For $k=2,4,\dots n$, the even $D=k$ is the same as the event $\{ Y=k \}=\cup \{ Y=-k \}$ so the PMF of $D$ is 
$$
\begin{aligned}
P(D=0) & = \begin{pmatrix}
n \\
\frac{n}{2}
\end{pmatrix} \left( \frac{1}{2} \right)^{n}  \\
 \\
P(D=k) & =P(Y=k)+P(Y=-k)= \begin{pmatrix}
n \\
\frac{n+k}{2}
\end{pmatrix}\left( \frac{1}{2} \right)^{n}
\end{aligned}
$$
for even $k$ 

## Function of two $\text{r.v's }$  

Given an experiment with sample space $S$, if $X$ and $Y$ are $\text{r.v's }$that map $s \in S$ to $X(s)$ and $Y(s)$, then $g(X,Y)$ is the $\text{r.v}$ that maps $s\to g(X(s),Y(s))$

Notice that we assume that $X$ and $Y$ are defined in $S$ and that it is rich enough to cover whateve $\text{r.v's }$ we want. For eg, if $X$ is based on a coin flip and $Y$ on a die roll, then $S_{1}=\{ \text{H,T} \}$ for $X$  and $S_{2}=\{ 1\dots6 \}$ for $Y$ but we can redefine the sample space as $$S =S_{1}\times S_{2} =\{ (s_{1},s_{2}):s_{1} \in S_{1},s_{2}\in S_{2} \}$$
## Ex. Max of two die rolls 

Let $X$,$Y$ represent the number rolled on the first and second roll respectively. Then, for any given value of $X$,$Y$ and $\mathrm{max}(X,Y)$, we can write the PMF as $$\begin{aligned}
 & P(\max(X,Y)=1)=1/36,\\ & P(\max(X,Y)=2)=3/36,\\ & P(\max(X,Y)=3)=5/36,\\  & P(\max(X,Y)=4)=7/36,\\ & P(\max(X,Y)=5)=9/36,\\ & P(\max(X,Y)=6)=11/36. 
\end{aligned}$$
So if we let $Z=\mathrm{max}(X,Y)$ then the PMF is 
$$
P(Z=k)=\frac{2k-1}{36},\quad k=1,2\dots,6
$$
