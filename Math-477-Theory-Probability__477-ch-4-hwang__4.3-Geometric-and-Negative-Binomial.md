# 4.3 Geometric and Negative Binomial

<!-- PAGETOC -->



## Geometric Distribution 

Consider a sequence of independent Bernoulli trials that are performed until a success occurs. Let $X$ be the number of failures before the first success. Then $X$ has the geometric distribution with parameter $p$ and is denoted by 
$$
X \sim\mathrm{Geom}(p) 
$$
## Geometric PMF 

If $X \sim\mathrm{Geom}(p)$ then the PMF of $X$ is 
$$
P(X=k) =q^{k}p
$$
for $k=0,1,2,\dots$ where $q=1-p$

This is valid because summing a geometric series results in 
$$
		\sum_{k=0}^{\infty} q^{k}p = p \sum_{k=0}^{\infty} q^{k}=p \cdot \frac{1}{1-q}=1
$$
## Geometric CDF 

If $X \sim\mathrm{Geom}(p)$ then the CDF of $X$ is 
$$
F(X) =
\begin{cases}
1-q^{\lfloor x \rfloor +1}, & \quad \text{if }x\geq 0 \\
0, & \quad \text{if }x<0 
\end{cases}
$$
where $q=1-p$ and $\lfloor x \rfloor$ is the greatest integer $\leq$  $x$ 

## Geometric Expectation 

Let $X \sim\mathrm{Geom}(p)$ and by definition we have that 
$$
E(X) =\sum_{k=0}^{\infty} kq^{k}p
$$
Where $q=1-p$. This is not a geometric series since there is a $k$ being multiplied. Notice that each term looks like $kq^{k-1}$, the derivative of $q^{k}$

Differentiate both sides of 
$$
\sum_{k=0}^{\infty} \frac{1}{1-q}
$$
and then multiply both sides by $pq$ to find that 
$$
\boxed{
E(X) =\frac{q}{p}
}
$$
## 1st Success Distribution 

In a sequence of Bernoulli trials with parameter $p$, let $Y$ be the number of trials until the first successful trial including the success trial. Then $Y$ has the first success distribution with parameter $p$ denoted by 
$$
Y \sim FS(p)
$$
If $Y\sim FS(p)$ then $Y-1\sim\mathrm{Geom}(p)$ and we can convert between the PMFs of $Y$ and $Y-1$ by writing 
$$
P(Y=k)=P(Y-1=k-1)
$$
Conversely if $X \sim\mathrm{Geom}(p)$ then $X+1\sim FS(p)$ 


## 1st