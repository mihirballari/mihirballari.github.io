# 7.4 Cov, Var of Sums and Correlations

<!-- PAGETOC -->


The following proposition shows that the expectation of a product of independent random variables is equal to the product of their expectations 

## 4.1 

If $X$ and $Y$ are independent, then for any functions $h$ and $g$ 
$$
\large
E[g(X)h(Y)]=E[g(X)]\cdot E[h(Y)]
$$
### Proof 

Suppose that $X$ and $Y$ are jointly continuous with joint density $f(x,y)$, then 
$$
\large
\begin{aligned}
E[g(X)h(Y)]  & =\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x)h(y)f(x,y) \, dx  \, dy  \\
 & =\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x)h(y)f_{X}(x)f_{Y}(y) \, dx  \, dy  \\
 & =\int_{-\infty}^{\infty} h(y)f_{Y}(y) \, dy \\
  & =E[h(Y)]E[g(X)] 
\end{aligned}
$$
## Definition 

The covariance between $X$ and $Y$, denoted by Cov$(X,Y)$ is defined by 
$$
\large
 \text{Cov}(X,Y) = E[(X-E[X])(Y-E[Y])]
$$
Upon expanding we see that 
$$
\begin{aligned}
\large
\text{Cov}(X,Y)  & = E[XY-E[X]Y-XE[Y]+E[Y]E[X]]  \\ 
 & =E[XY]-E[X]E[Y]
\end{aligned}
$$
