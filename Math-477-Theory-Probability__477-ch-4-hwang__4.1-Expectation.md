# 4.1 Expectation

<!-- PAGETOC -->


Distributions of random variables give us information about the probability that the $\text{r.v}$ will fall into a specific set. For eg we can tell how likely it is that the $\text{r.v}$ will exceed 1000 or that it will equal 5 or be in $[0,7]$

What if we did not want so many probabilities but instead just one number that tells us the average value that the $\text{r.v}$ takes 

"average" is commonly referred to by the "mean" of an $\text{r.v}$ and aka as the "expected value" and "variability" refers to how "spread out" the distribution of the $\text{r.v}$ is. We use the "variance" and "std dev" to also do the same and are defined in therms of expected values. 

## Arithmetic + Weighted Mean 

Given a list of numbers $x_{1},x_{2}\dots,x_{n}$, the average is computed by adding and dividing by $n$ 
$$
\bar{x} = \frac{1}{n}\sum_{j=1}^{n} x_{j}
$$
and the weighted mean of $x_{1\dots n}$ 
$$
\mathrm{weighted\ mean}(x)= \sum_{j=1}^{n} x_{j}p _{j}
$$
where the weights $p_{1\dots n}$ are prespecified non-negative numbers that sum to 1 $\implies$ $\bar{x}$ is obtained when $p _{j}=1 /n$ for all $j$)

## Expectation of a Discrete $\text{r.v}$

The expected value (aka expectation or mean) of a discrete $\text{r.v}$ $X$ which has distinct possible values $x_{1},\dots,x_{n}$ is 
$$
\mathbb{E}(X) = \sum_{j=1}^{\infty} x_{j}P(x=x_{j})
$$
If the support is finite then this is replaced by a finite sum 
$$
	\mathbb{E}(X) = \sum_{x}^{} \underbrace{ x }_{ \text{value} }\quad \cdot \underbrace{ P(X=x) }_{ \text{PMF at }x }
$$
where the sum is over the support of $X$ (and $xP(X=x)$ is 0 for any $x$ $\not\in$ the support). 

In other words, the expected value of $X$ is a weighted of the values $X$ can take one, weighted by their probabilities.  As a quick example, take the following experiment

Let $X$ be the result of the roll. $X$ can take on values in $[1,6]$ and since the probability of rolling a number is the same, 
$$
\mathbb{E}(X) = \frac{1}{6}(1+2\dots+6) = 3.5
$$
 $$\boxed{\text{if }X , Y \text{ identically distributed } \implies \mathbb{E}(X)=\mathbb{E}(Y)}$$


