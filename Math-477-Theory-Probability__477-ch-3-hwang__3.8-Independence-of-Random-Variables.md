# 3.8 Independence of Random Variables

<!-- PAGETOC -->


If two $\text{r.v's }$ $X$ and $Y$ are independent, then knowing the value of $X$ gives 0 information about the value of $Y$ and vice versa. 

## Independence of 2 $\text{r.v's }$  

Random variables $X$ and $Y$ are said to be independent if 
$$
P(X\leq x,Y\leq y) =P(X\leq x)\cdot P(Y\leq y)
$$
for all $x,y \in \mathbb{R}$

In the discrete case, this is equivalent to the condition 
$$
P(X=x,Y=y) =P(X=x)\cdot P(y=y)
$$
for all $x,y$ in the support of $X$ and $y$ in the support of $Y$ 

## Independence of many $\text{r.v's }$  

Random variables $X_{1},\dots,X_{n}$ are independent if 
$$
P(X_{1}\leq x_{1},\dots,X_{n}\leq  x_{n}) =P(X_{1}\leq x_{1})\cdots P(X_{n}\leq x_{n})
$$
for all $x_{1},\dots,x_{n}\in \mathbb{R}$. For infinitely many $\text{r.v's }$, we say that they are independent if every finite subset of the $\text{r.v's }$is independent 

## Ex. 2 Fair Die Rolls 

If $X$ is the number on the first die and $Y$ is the second, then $X+Y$ is not independent of $X-Y$ since 
$$
0 = P(X+Y=12,X-Y=1)\neq P(X+Y=12)\cdot P(X-Y=1)=\frac{1}{36}\cdot \frac{5}{36}
$$
Knowing the total is 12 tells us that the difference must be 0 so the $\text{r.v's }$provide information about each other. 

## Functions of Independent Random Variables 

If $X$ and $Y$ independent $\text{r.v's }$, then any function of $X$ is independent of any function of $Y$ 

## i.i.d 

When working with $\text{r.v's }$ that are independent and have the same distributution, we call such $\text{r.v's }$**independent and identically distributed**

## i.i.d of Bern(p) 

If $X \sim \mathrm{Bern}(p)$ is viewed as the number of successes in $n$ independent Bernoulli trials with success probability $p$, then we can write 
$$
X= X_{1}+ \cdots +X_{n}
$$
where the $X_{i}$ are $\text{i.i.d}$ $\mathrm{Bern}(p)$

### Proof 

Let $X_{i}=1$ if the $i^{th}$ trial was a success or else $X_{i}=0$. Then for any sequence of $n$ independently performed trials, if we sum up the values that $X_{i}$ takes on for for each $i \in \{ 1,\dots,n \}$ trial. We get the total number of successes. 

## i.i.$d$ of $X$,$Y$ Bern(p) 

If $X \sim \mathrm{Bern}(n,p)$ and $Y\sim \mathrm{Bern}(m,p)$ and $X$ is independent of $Y$, then 
$$
X+Y \sim \mathrm{Bern}(n+m,p)
$$
### Proof 

We can represent both $X$ and $Y$ as the sum of $\text{i.i.d}$ $\mathrm{Bern}(p)$ $\text{r.v's }$, so 
$$
\begin{aligned}
 X & =X_{1}+ \cdots +X_{n}  \\
 \\
Y & =Y_{1}+\cdots+Y_{m} 
\end{aligned}
$$
Where the $X_{i}$ and $Y_{j}$ are all $\text{i.i.d}$ $\mathrm{Bern}(p)$. Then $X+Y$ is the sum of $n+m$ $\text{i.i.d}$ $\mathrm{Bern}(p)$ $\text{r.v's }$ so its distribution is 
$$
\mathrm{Bin}(n+m,p)
$$

## Conditional Independence of Random Variables 

$\text{r.v's }$ $X$ and $Y$ are conditionally independent given an $\text{r.v}$ $Z$ if for all $x,y\in \mathbb{R}$ and all $z$ in the support of $Z$ 
$$
P(X\leq x,Y\leq y \mid Z=z)= P(X\leq x\mid Z=z)\cdot P(Y\leq y \mid Z=z)
$$
for discrete $\text{r.v's }$, an equivalent definition is 
$$
P(X= x,Y= y \mid Z=z)= P(X= x\mid Z=z)\cdot P(Y= y \mid Z=z)
$$
## Conditional PMFs

For any discrete $\text{r.v's }$$X$ and $Z$, the function $P(X=x\mid Z=z)$, when considered as a function of $x$ for fixed $z$ is called the conditional PMF of $X$ given $Z=z$

Independence of $\text{r.v's }$ does not imply conditional independence or vice versa. 

## Ex. Matching Pennies 

Players $A$ and $B$ each flip their fair pennies independently. If they match then $A$ wins; else $B$ wins. 

Let $X$ be 1 if $A$ lands Heads and -1 otherwise and define the same for $Y$ (the $\text{r.v's }$ $X$ and $Y$ are called random signs). 

Let $Z=XY$ which is 1 if $A$ wins and -1 if $B$ wins. Then $X$ and $Y$ are unconditionally independent but given $Z=1$ we know that $X=Y$ (pennies match) so $X$ and $Y$ are conditionally dependent on $Z$. 

