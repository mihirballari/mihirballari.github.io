# Math-477-Homework-9

<!-- PAGETOC -->



---
title: "MATH 477 – Homework 9"
author: "Mihir Ballari"  
---
## 1.  The moment generating functions of $X$ and $Y$ are given by 
$$\large
M_{X}(t)=e^{2e^{t}-2}\qquad \text{and}\qquad M_{Y}(t)= \left( \frac{3}{4}e^{t}+\frac{1}{4} \right)^{10}
$$

## if $X$ and $Y$ are independent, what is $P(X+Y=2)$?



For $X$, Notice that the MGF of a $\mathrm{Poisson}(\lambda)$ is 
$$
\large
 M(t) = e^{\lambda(e^{t}-1)}
$$
Comparing that,
$$
\large
 M_{X}(t)=e^{2e^{t}-2} \implies X \sim \mathrm{Poisson}(\lambda=2)
$$
So $X$  has a $\text{p.m.f }$ 
$$
\large
P(X=k)= e^{2e^{t}-2},\quad k=0,1,2\dots
$$
Then for $Y$, notice that the MGF of a $\mathrm{Binomial}(n,p)$ is 
$$
\large
M(t)= (p e^{t}+1-p)^{n}
$$
Comparing that, 
$$
\large
 M_{Y}(t) = \left( \frac{3}{4}e^{t}+\frac{1}{4} \right)^{10} \implies Y\sim \mathrm{Binomial}\left( n=10,p=\frac{3}{4} \right) 
$$
So $Y$  has a $\text{p.m.f }$ 
$$
\large
 P(Y=j) = \begin{pmatrix}
10 \\
j 
\end{pmatrix}
\left( \frac{3}{4} \right)^{j}
\left( \frac{1}{4} \right)^{10-j}\qquad j=0,1,2\dots
$$
\newpage
Recall that for independent, discrete $\text{r.v's }$, the distribution of the sum is given by 
$$
\large
 P(X+Y=2) =\sum_{k}^{} P(X=k)\cdot P(Y=2-k)
$$
So 
$$  \large
P(X+Y=2) 
= P(X=0) \cdot 
P(Y=2) \cdot 
\cdot\cdot 
P(X=0)\cdot
P(Y=0) 
$$
After substituting values of $k\in \{ 0,1,2 \}$ into the $\text{p.m.f's }$ for $X$ and $Y$ we find that 
$$
\boxed{
\large
 \begin{aligned}
P(X+Y=2)  & = e^{-2} \begin{pmatrix}
10 \\
0 
\end{pmatrix} \left( \frac{3}{4} \right)^{2}\left( \frac{1}{4} \right)^{8}  +2e^{-2}\begin{pmatrix}
10 \\
1
\end{pmatrix}\left( \frac{3}{4} \right)^{1}\left( \frac{1}{4} \right)^{9} \\
 \\
 & +2e^{-2}\left( \frac{1}{4} \right)^{10} \\
 \\
 & \approx 6.0 \times 10^{-5}
\end{aligned}
}
$$

