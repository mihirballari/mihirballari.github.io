# 3.9 Binomial and Hypergeometric connections

<!-- PAGETOC -->


Both $\mathrm{Bin}()$ and $\mathrm{Hyp}()$ are connected and we can go from one to the other. 

- We can get from Binomial to Hypergeometric by **conditioning** 
- We can get from Hypergeometric to Binomial by **taking a limit**

## $X$ and $Y$ Binomial $\to$  Hypergeom 

If $X\sim \mathrm{Bin}(n,p)$ and $Y\sim \mathrm{Bin}(m,p)$ and $X$ is independent of $Y$, then the conditional distribution of $X$ given $X+Y=r$ is 
$$
\mathrm{Hyp}(n,m,r) 
$$
and in the other direction, the binomial is a limiting case of the hypergeometric. 
## $X$ HyperGeom $\to$  Binomial Limit

If $X\sim \mathrm{Hyp}(w,b,n)$ and $N=w+b\to \infty$ such that $p=\frac{w}{w+b}$ remains fixed, then the PMF of $X$ converges to the $\mathrm{Bin}(n,p)$ PMF. By taking the stated limit of the $\mathrm{Hyp}(w,b,n)$ $\text{p.m.f }$we eventually see that as $N=w+b\to \infty$ 
$$
\begin{aligned}
P(X=k)  & = \frac{\begin{pmatrix}
w \\
k
\end{pmatrix}\begin{pmatrix}
b \\
n-k
\end{pmatrix}}{\begin{pmatrix}
w+b \\
n
\end{pmatrix}}  \\
 & \quad \quad \vdots  \\ 
 \\

P(X=k)  & \to \begin{pmatrix}
n \\
k 
\end{pmatrix}p ^{k}q^{n-k}
\end{aligned}
$$


