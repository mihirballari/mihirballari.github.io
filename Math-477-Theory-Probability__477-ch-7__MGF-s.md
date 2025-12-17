# MGF's

<!-- PAGETOC -->



---
title: "Moment Generating Functions"
author: "Mihir Ballari"  
---

Moment generating functions are useful for several reasons, one of which is their application to analysis of sums of random variables 

## Definition 

The $\mathbf{n^{th}}$ moment of a random variable $X$ is defined to be $E[X^{n}]$. The $\mathbf{n^{th}}$ **central moment** of $X$ is defined to be 
$$
E[(X-E X)^{n}]
$$
For example the first moment is the expected value $E[X]$. The second central moment is the Variance of $X$ that is $\mathrm{Var}(X)$. Similar to the mean and variance of random variables, other moments give useful information about random variables. 

The moment generating function (MGF) of a random variable $X$ is a function $M_{X}(s)$ defined as 
$$
\boxed{ \large
 M_{X}(s) = \mathrm{E}[e^{sX}] 
}
$$
We say that the MGF of $X$ exists, if there exists a positive constant $a$ such that $M_{X}(s)$ is finite for all $s \in[-a,a]$ 

\newpage
## Example 1 

For each of the following $\text{r.v's  }$ find the MGF, 

### A. $X$ is a discrete $\text{r.v  }$ with PMF 
$$
\large
P_{X}(k)= 
\begin{cases}
\frac{1}{3},\quad k=1 \\
 \\
\frac{2}{3},\quad k=2 
\end{cases}
$$

### Solution.  

By definition for any $\text{r.v  }$ $X$, 
$$
\large
M_{X}(t) = E[e^{tX}] = \sum_{k}^{}e^{tk}P(X=k)
$$

So plug in all possible values of $X$ which are 1 and 2 
$$
\large
M_{X}(t) = e^{t\cdot 1}P(X=1)+e^{t\cdot 2}P(X=2)
$$
then substitute the probabilities from $P _{X}(k)$ 
$$
\boxed{
\large
M_{X}(t) = e^{t} \frac{1}{3}+e^{2t} \frac{2}{3}
}
$$

### B.  $Y$ is a $\mathrm{Uniform}(0,1)$ $\text{r.v  }$ 


### Solution.  

We can write the $\text{p.d.f }$ for $Y$ 
$$
\large
 f_{Y}(y)=
 \begin{cases}
1,\quad  & 0\leq y\leq 1  \\
 \\
0,\quad  & \text{otherwise}
\end{cases}
$$

and then applying the definition of MGFs for continuous $\text{r.v's  }$ 
$$
\large
\begin{aligned}
 M_{Y}(t) & = \mathrm{E}[e^{tY}]   = \int_{-\infty}^{\infty} e^{ty}f_{Y}(y) \, dy  \\
\end{aligned}
$$
and because $f_{Y}(y)=0$ outside $[0,1]$ 
$$
\large
M_{Y}(t)=\int_{0}^{1} e^{ty} \, dy
$$
Evaluate for $t \neq 0$ 
$$
\large
\int_{0}^{1} e^{ty} \, dy  = \left[ \frac{1}{t}e^{ty} \right] ^{1}_{0} = \frac{1}{t}(e^{t}-1)
$$
So 
$$
\large
 M_{Y}(t)=\frac{e^{t}-1}{t},\qquad t\neq 0
$$

\newpage
# Finding moments from MGF's 

Why is the MGF useful? 
- MGF of $X$ gives us all the moments of $X$ 
- The MGF uniquely determines the distribution $\implies$ if two $\text{r.v's  }$ have the same MGF then they must have the same distribution. 

Thus if you find the MGF of a $\text{r.v  }$ $\implies$ distribution has been determined. 

## $\mathbf{K^{th}}$ moment of an $\text{r.v  }$  

Recall the taylor series for $e^{x}$: for all $x \in \mathbb{R}$ we have that 
$$
\large
e^{x}=1+x+\frac{x^{2}}{2!}+\frac{x^{3}}{3!}+\dots = \sum_{k=0}^{\infty} \frac{x^{k}}{k!}
$$
Now for $e^{sX}$ we can write 
$$
\large
 e^{sX}=\sum_{k=0}^{\infty} \frac{(sX)^{k}}{k!} = \sum_{k=0}^{\infty} 
\frac{X^{k} s^k}{k!}
$$
thus 
$$
\large
 M_{X}(s)=\mathrm{E}[e^{sX}] =\sum_{k=0}^{\infty} \mathrm{E}[X^{k}] \frac{s^k}{k!}
$$
So the $\mathbf{k^{th}}$ moment of $X$ is the coefficient of $\frac{s^k}{k!}$ in the Taylor Seriesof $M_{X}(s)$. Thus if we have the Taylor Series of $M_{X}(s)$, we can find all moments of a given $\text{r.v  }$ $X$ 

\newpage
## If $Y \sim \mathrm{Uniform}(0,1)$, then find $\mathrm{E}[Y^{k}]$ using $M_{Y}(s)$  

From Example 1, we found that 
$$
\large
 M_{Y}(t) = \mathrm{E}[e^{tY}] =\frac{e^{t}-1}{t}
$$
And the Taylor Expansion of an MGF is 
$$
\large
M_{Y}(t) = \sum_{k=0}^{\infty} \mathrm{E}[Y^{k}] \frac{t^{k}}{k!}
$$
So if we expand $\frac{e^{t}-1}{t}$ as a power series in $t$ starting from $e^{t}$ 
$$
\large
 e^{t} = \sum_{n=0}^{\infty} \frac{t^{n}}{n!} =1+t+\frac{t^{2}}{2!}+\frac{t^{3}}{3!}\dots 
$$
So $e^{t}-1$ is 
$$
\large
e^{t}-1= \sum_{k=0}^{\infty} \frac{t^{n}}{n!}-1\implies \sum_{k=1}^{\infty} \frac{t^{n}}{n!}
$$
then divide by $t$ 
$$
\large
\frac{1}{t}\sum_{k=1}^{\infty} \frac{t^{n}}{n!} = \sum_{k=1}^{\infty} \frac{t^{n}}{n!\cdot t} \implies \sum_{k=1}^{\infty} \frac{t^{n-1}}{n!}
$$
then changing the index, let $k=n-1\implies n=k+1$ 
$$
\large
\sum_{n=1}^{\infty} \frac{t^{n-1}}{n!} = \sum_{k=0}^{\infty} \frac{t^{k}}{(k+1)!}
$$
and the denominator can be rewritten 
$$
\large
 \sum_{k=0}^{\infty} \frac{1}{(k+1)} \frac{t^{k}}{k!}
$$
From the general form of an MGF 
$$
\large
M_{Y}(t) = \sum_{k=0}^{\infty} \mathrm{E}[Y^{k}] \frac{t^{k}}{k!}
$$
we find that 
$$
\boxed{
\large
 \mathrm{E}[Y^{k}] = \frac{1}{(k+1)}
}
$$

Remember that the coefficient of $\frac{t^{k}}{k!}$ in the taylor expansion of $M_{X}(t)$ can be found by taking the $\mathbf{k^{th}}$ derivative of $M_{X}$ and evaluating at $s=0$ 
$$
\large
\mathrm{E}[X^{k}] = \frac{ d^{k} }{ d s^k }M_{X}\biggr|_{s=0}
$$
We can find all moments of $X^{k}$ from its MGF: 
$$
\boxed{
\large
\begin{aligned}
 & M_{X}(t)= \sum_{k=0}^{\infty} \mathrm{E}[X^{k}] \frac{s^k}{k!} \\
 \\
 & \mathrm{E}[X^{k}] = \frac{ d^{k} }{ d s^k }M_{X}\biggr|_{s=0}
\end{aligned}
}
$$

\newpage
# Let $X \sim \mathrm{Exponential}(\lambda)$, Find the MGF of $X$, $M_{X}(s)$ and all of its moments $\mathrm{E}[X^{k}]$

Recall for $X \sim \mathrm{Exponential}(\lambda)$ the $\text{p.d.f }$  is 
$$
\large
 f_{X}(x) =
 \begin{cases}
\lambda e^{-\lambda x}, & \quad x≥0 \\
 \\
0, & \quad \text{otherwise}
\end{cases}
$$
And by definition of MGFs, for a continuous $\text{r.v  }$ 
$$
\large
M_{X}(s) =\mathrm{E}[e^{sX}]  =\int_{-\infty}^{\infty} e^{sx}f_{X}(x) \, dx
$$
$$
\large
 M_{X}(s)=\int_{0}^{\infty} e^{sx} \lambda e^{-\lambda x} \, dx 
 = \lambda \int_{0}^{\infty} e^{(s-\lambda)x} \, dx 
$$
$$
\large
 \int_{0}^{\infty} e^{(s-\lambda)x} \, dx = \frac{1}{s-\lambda}e^{(s-\lambda)x}\biggr|^{\infty}_{0} =
0 -\frac{1}{s-\lambda} \implies \lambda \cdot \frac{1}{\lambda-s}
$$
so 
$$
\boxed{
\large
M_{X}(s)  =\frac{\lambda}{\lambda-s},\quad s<\lambda
}
$$

So $M_{X}$ exists for all $s<\lambda$. Now to find the moments of $X$ we write 
$$
\begin{aligned}
\large
 M_{X}(s)  & =\frac{\lambda}{\lambda-s} \\
 \\
 & =\frac{1}{1-\frac{s}{\lambda}} \\
 \\
 & =\sum_{k=0}^{\infty} \left( \frac{s}{\lambda} \right) ^{k},\quad \text{for } \left| \frac{s}{\lambda}  \right| <1  \\
 \\
 & =\sum_{k=0}^{\infty} \frac{k!}{\lambda^{k}} \frac{s^k}{k! }
\end{aligned}
$$
So the moments of $X$ 
$$
\boxed{
\large
 \mathrm{E}[X^{k}] =\frac{k!}{\lambda^{k}},\quad \text{for }k=0,1,2\dots 
}
$$




\newpage
# Let $X \sim \mathrm{Poisson}(\lambda)$, find $M_{X}(s)$ 

We have that 
$$
\large
P _{X}(s) =e^{-\lambda} \frac{\lambda^{k}}{k!},\quad \text{for }k=0,1,2\dots
$$
Thus 
$$
\large
 \begin{aligned}
M_{X}(s)  & =\mathrm{E}[e^{sX}]  \\
 \\
 & =\sum_{k=0}^{\infty} e^{sk}-e^{-\lambda} \frac{\lambda^{k}}{k!} \\
 \\
 & =e^{-\lambda}\sum_{k=0}^{\infty} e^{sk} \frac{\lambda^{k}}{k!}  \\
 \\
 & = e^{-\lambda}\sum_{k=0}^{\infty} \frac{(\lambda e^{s})^{k}}{k!} \\
 \\
 & =e^{-\lambda}e^{\lambda e^{s}},\qquad \text{Taylor Expansion for } e^{x} \\
 \\
 & =e^{\lambda(e^{s}-1)}
\end{aligned}
$$

\newpage
# Theorem 6.1 

$$
\boxed{
\begin{aligned}
 & \text{Consider two random variables } X \text{ and } Y\text{. Suppose that there exists a}  \\
 & \text{positive constant } c \text{ such that MGFs of  } X   \text{ and }Y \text{ are finite and identical } \\
 & \text{for all values of } \in [-c,c] \text{ then, }  \\
 \\
 & \quad \quad \quad \quad \quad \quad \quad \quad \quad F_{X}(t) = F_{Y}(t),\qquad \text{for all }t\in \mathbb{R}
\end{aligned}
}
$$

## For a $\text{r.v  }$ $X$, Find the distribution of $X$ if we know that
$$
\large
 M_{X}(s) =\frac{2}{2-s},\quad \text{for }s \in(-2,2)
$$

We had found that the MGF of an $\text{r.v  }$ $X \sim \mathrm{Exponential}(\lambda)$ is 
$$
\large
M_{X}(s)  =\frac{\lambda}{\lambda-s},\quad s<\lambda
$$

So here our $\text{r.v  }$ $X$ is an exponential $\text{r.v  }$ with $\lambda=2$ thus the distribution of $X$ is 
$$
\boxed{
\large
 X \sim \mathrm{Exponential}(\lambda=2)  
}
$$
\newpage 

# Sum of Independent $\text{r.v's  }$ 

Suppose $X_{1},X_{2},\dots X_{n}$ are $n$ independent $\text{r.v's  }$ and the $\text{r.v  }$ $Y$ is defined as 
$$
\large
 Y = X_{1}+X_{2}+\dots X_{n}
$$
Then 
$$
\large
 \begin{aligned}
M_{Y}(s) & =\mathrm{E}[e^{sY}]  \\
 \\
 & =\mathrm{E}[e^{s(X_{1}+X_{2}\dots+X_{n})}]  \\
 \\
 & =\mathrm{E}[e^{sX_{1}}\cdot e^{sX_{2}}\cdots e^{sX_{n}}  ]  \\
 \\
 & =\mathrm{E}[e^{sX_{1}}] \cdot \mathrm{E}[e^{sX_{2}}] \cdots \mathrm{E}[e^{sX_{n}}]\qquad \text{(since }X_{i}\text{'s are independent)} \\
  \\
 & =M_{X_{1}}(s)\cdot M_{X_{2}}(s) \cdots M_{X_{n}(s)}
\end{aligned}
$$

$$\large
\boxed{
\begin{aligned}
   & \text{If }X_{1},X_{2},\dots   X_{n} \text{ are }  n \text{ independent random variables, then }  \\ 
\\
& \qquad \quad M_{X_{1}+X_{2}+\dots X_{3}}(s) =M_{X_{1}}(s) \cdot M_{X_{2}}(s)\cdots M_{Xn}(s)
\end{aligned}
} 
$$

# Let $X \sim \mathrm{Binomial}(n,p)$. Find the MGF of $X$ 

A Binomial $\text{r.v  }$ can be considered as the sum of $n$ independent and identically distributed ($\text{i.i.d}$ ) Bernoulli $\text{r.v's  }$. So we can write 
$$
\large
X = X_{1}+X_{2}+X_{3}\dots X_{n}
$$ 
Where $X_{i}\sim \mathrm{Bernoulli}(p)$ so 
$$
\large
 \begin{aligned}
M_{X}(s) & =M_{X_{1}}\cdot M_{X_{2}}\dots M_{X_{n}} \\
  \\
 & = \left( M_{X_{1}}(s) \right)^{n},\qquad \text{since the }X_{i}\text{'s }\text{are i.i.d}
\end{aligned}
$$
and also 
$$
\large
M_{X_{1}}(s)= \mathrm{E}[e^{sX_{1}}] = p e^{s}+1-p
$$
So 
$$
\boxed{
\large
 M_{X}(s)=(p e^{s}+1-p)^{n}
}
$$

## Using MGF's, prove that if $X \sim \mathrm{Binomial}(m,p)$ and $Y \sim \mathrm{Binomial}(n,p)$ are independent, then $X+Y \sim \mathrm{Binomial}(m+n,p)$ 

We know that the MGF of a Binomial rv $X\sim \mathrm{Binomial}(n,p)$ is given by 
$$
\large
 M_{X}(s)=(p e^{s}+1-p)^{n}
$$
So for both $\text{r.v's  }$ $X$ and $Y$ we write 
$$\large
\begin{aligned}
  & M_{X}(s)=(p e^{s}+1-p)^{m}  \\
 \\
 & M_{Y}(s)=(p e^{s}+1-p)^{n}
\end{aligned}
$$
Since $X$ and $Y$ are independent, we conclude that 
$$
\large
 \begin{aligned}
M_{X+Y}(s) & = M_{X}(s)\cdot M_{Y}(s)  \\
 \\
 & =(p e^{s}+1-p)^{m} \cdot (p e^{s}+1-p)^{n} \\
 \\
 & = (p e^{s}+1-p)^{m+n}
\end{aligned}
$$
which is the MGF of a $\mathrm{Binomial}(m+n,p)$ $\text{r.v  }$. Thus $\boxed{X+Y \sim \mathrm{Binomial}(m+n,p)}$



