# 4.2 Linearity Of Expectation

<!-- PAGETOC -->


The expected value of a sum of $\text{r.v's }$ is the sum of their individual expected values

## Linearity of Expectation 

For any $\text{r.v's }$ $X$ and $Y$ and any constant $c$ 
$$
\begin{aligned}
E(X+Y)  & =E(X)+E(Y)  \\
 \\
E(cX) &= cE(X) 
\end{aligned}
$$
## Binomial Expectation 

For $X\sim \mathrm{Bin}(n,p)$, by the linearity of expectation, we can write $X$ as the sum of $n$ independent $\mathrm{Bern}(p)$ $\text{r.v's }$ 
$$
X=I_{1}+\cdots+I_{n}
$$
where each $I_{j}$ has expectation 
$$
E(I_{j})= 1p+0q = p
$$
So by linearity, 
$$
E(X) =E(I_{j})+\cdots+E(I_{n}) = np
$$
## Hypergeometric Expectation 

Let $X \sim \mathrm{Hyp}(w,b,n)$, as above we can write 
$$
X=I_{1}+\cdots+I_{n}
$$
Where $I_{j}$ is 1 if the $j^{th}$ event is a "white ball" and 0 otherwise. By symmetry $I_{j}=\mathrm{Bern}(p)$ with $p=\frac{w}{w+b}$, since the $j^{th}$ ball drawn is equally likely to be any of the $w+b$ balls. 

Unlike the binomial case, the $I_{j}$ are not independent since we draw without replacement $\implies$ drawing a "white ball" means that there is a lower chance that another ball is white.

Regardless, linearity still holds so 
$$
E(X) =\frac{nw}{w+b}
$$
## Monotonicity of expectation 

Let $X$ and $Y$ be $\text{r.v's }$  such that $X\geq Y$ with probability 1. Then $E(X)\geq E(Y)$ with equality holding $\iff X=Y$ with probability 1

### Proof 

Holds for all $\text{r.v's }$but WLOG only for discrete $\text{r.v's }$. The $\text{r.v}$ $Z =X-Y\geq0$ with $p=1$ 
so $E(Z)\geq0$ since $E(Z)$ is defined as the sum of non-negative terms. By linearity 
$$
E(X)-E(Y) = E(X-Y)\geq 0
$$
and if $E(X)=E(Y)$ and by linearity, $E(Z)=0$ which implies that 
$$
P(X=Y)=P(Z=0)=1
$$
since a single positive term in the sum defining $E(Z)$ makes the whole sum positive. 

asdfhsdf
	$\int dx$


$$
sometex
$$
