# 3.3 Bernoulli & Binomial

<!-- PAGETOC -->


---
~
---

## Bernoulli Distributions

A random variable $X$ is said to have the Bernoulli distribution with a parameter $p$ if
$$
\begin{cases}
 & P(X  =1)  =p \\
 \\
 & P(X  =0)  =1-p
\end{cases}
$$
where $0<p<1$. A Bernoulli $\text{r.v  }$ is denoted as 
$$
\boxed{X \sim \mathrm{Bern}(p)}
$$

Any $\text{r.v}$ whose possible values are 0 and 1 has a Bernoulli distribution with $p$, the probability of the $\text{r.v}$ being 1. The number $p$ in $\mathrm{Bern}(p)$ is called the parameter of the distribution $\implies$ determines which specific Bernoulli distribution we have from the family of Bernoulli distributions. 

Any event has a Bernoulli $\text{r.v}$ that is naturallly assosciated with it and is equal to
$$
\begin{cases}
1,\quad  & \text{if the event happens} \\
 \\
0,\quad  & \text{otherwise}
\end{cases}
$$
This is called the indicator random variable of the event. 

## Indicator Random Variables 

The indicator random variable of an event $A$ is the $\text{r.v}$ which equals 1 if A occurs and 0 if otherwise. The indicator $\text{r.v}$ of A is denoted by 
$$
I_{A}\quad \text{or}\quad I(A)
$$
## Bernoulli Trials 

An experiment that can result in either a "success" or a "failure" (but not both) is called a Bernoulli trial. A Bernoulli $\text{r.v}$ can be thought of as the indicator of success in a Bernoulli trial$\implies$ the bernoulli $\text{r.v}$ equals 1 if success and 0 if a failure occurs. 

The parameter $p$ is the success probability of the $\mathrm{Bern}(p)$ distribution. 
## Binomial Distributions

Suppose that $n$ independent Bernoulli trials are performed, each with the same success probability $p$. Let $X$ denote the number of successes. 

The distribution of $X$ is called the Binomial Distribution with parameters $n$ and $p$ and is denoted as 
$$
\boxed{
X \sim \mathrm{Bin}(n,p) 
}
$$
## Binomial PMF

If $X \sim \mathrm{Bin}(n,p)$. then the PMF of $X$ is 
$$
\boxed{
P(X=k) = \begin{pmatrix}
n \\
k
\end{pmatrix}
p ^{k} (1-p)^{n-k}
}
$$
for $k=0,1,\dots,n$ (and $P(X=k)=0$ otherwise) 

### Proof of the Binomal PMF 

An experiment consisting of $n$ independent Bernoulli trials produces a sequence of successes and failures. The probability of any specific sequence of $k$ successes and $n-k$ fails is $p ^{k}(1-p)^{n-k}$ 

There are $\begin{pmatrix}n \\ k \end{pmatrix}$ such sequences, since we just need to select where the successes are. Therefore if we let the Binomial $\text{r.v}$ $X$ denote the number of succeses, we get the PMF 
$$
\boxed{
P(X=k) = \begin{pmatrix}
n \\
k
\end{pmatrix}
p ^{k} (1-p)^{n-k}
}
$$

## Success-Failure Symmetry 

Let $X \sim \mathrm{Bin}(n,p)$ and $q=1-p$ ($q$ is often used to denote the failure of a Bernoulli trial). Then it follows that 
$$
\boxed{
n-X \sim \mathrm{Bin}(n,q) 
}
$$
counting failures instead of successes still gives you a Binomial, just with $q=1-p$ instead of $p$ 


