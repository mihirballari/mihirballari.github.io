# 3.4 Hypergeometric

<!-- PAGETOC -->



## Example of a Hypergeometric Distribution 

If we were to draw $n$ balls (without replacement) out of an urn with 
$$
\begin{cases}
w\quad  & \text{white balls} \\
b\quad  & \text{black balls} \\
\end{cases}
$$
the resulting distribution for the number of white balls obtained in $n$ would follow a binomial distribution 
$$
\boxed{
\mathrm{Bin}\left( n, \frac{w}{(w+b)} \right) 
}
$$
Since the draws are independent Bernoulli trials, each with a success probability of
$$
w / (w+b)
$$
If we instead draw without replacement, then the number of white drawn follows a hypergeometric distribution. 

## Hypergeometric Distribution

Consider the same urn with $w$ white balls, $b$ black balls. Drawing $n$ out of the urn at random without replacement such that all $\tiny \begin{pmatrix}w+b \\ n\end{pmatrix}$ samples are equally likely. 

Let $X$ be the number of white balls in the sample. Then $X$ is said to have the Hypergeometric distribution with parameters $w$,$b$ and $n$. and is denoted as 
$$
\boxed{
X \sim \mathrm{Hyp}(w,b,n) 
}
$$

## Hypergeometric PMF's

If $X \sim \mathrm{Hyp}(w,b,n)$  then the PMF of $X$ is 
$$
\boxed{
P(X=k) = \frac{\begin{pmatrix}
w \\
k
\end{pmatrix}\begin{pmatrix}
b \\
n-k
\end{pmatrix}}{\begin{pmatrix}
w+b \\
n
\end{pmatrix}}
}
$$
for integers $k$ satisfying $0\leq k\leq w$ and $0\leq n-k\leq b$ and $P(X=k) =0$ otherwise. 

### Proof of the hypergeometric PMF

To get $P(X=k)$, we first count the the number of ways to draw $k$ white balls and $n-k$ black (without distinguishing between different orderings for getting the same set of balls) 

If $k>w$ then or $n-k>b$ then the draw is impossible. Otherwise there are 
$$
\begin{pmatrix}
w \\
k 
\end{pmatrix} 
\begin{pmatrix}
b \\
n-k 
\end{pmatrix}
$$
ways to draw $k$ white and $n-k$ black balls by the multiplication rule, there are 
$$
\begin{pmatrix}
w+b \\
n
\end{pmatrix}
$$
ways to draw $n$ balls. 

Since all samples are equally likely, the naive definition of probability gives us the PMF 
for integers $k$ satisfying $0\leq k\leq w$ and $0\leq n-k\leq b$. This PMF is valid because the numerator summed over all $k$ equals $\tiny \begin{pmatrix}w+b \\ n\end{pmatrix}$ by Vandermode's identity $\implies$  So the PMF sums to 1,
$$
\boxed{
P(X=k) = \frac{\begin{pmatrix}
w \\
k
\end{pmatrix}\begin{pmatrix}
b \\
n-k
\end{pmatrix}}{\begin{pmatrix}
w+b \\
n
\end{pmatrix}}
}
$$
## Ex. Elk capture-recapture

Of a forest with $N$ elk, $m$ are captured, tagged and released back. Later, $n$ elk are recaptured at random. Suppose that the recaptured elk are equally likely to be any set of $n$ of the elk (eg. captured elk's do not learn how to avoid being captured again) 

Then the number of tagged elk in the recaptured sample $n$ is 
$$
\mathrm{Hyp}(m,N-m,n)
$$
The $m$ tagged elk correspond to the white balls and the $N-m$ untagged elk correspond to the black balls. Instead of sampling $n$ balls from the urn, we capture $n$ elk from the forest. 

## Ex. Aces in a poker hand 

In a five-card hand drawn at random from a deck, the number of aces in the hand has the $\mathrm{Hyp}(4,48,5)$ distribution. (think aces being synonymous to white balls and non-aces as black). Using the Hypergeometric PMF, we can compute the probability that the hand has exactly $w=3$ aces to be 
$$
\boxed{
\frac{\begin{pmatrix}
4 \\
3
\end{pmatrix}\begin{pmatrix}
48 \\
2
\end{pmatrix}}{\begin{pmatrix}
52 \\
5
\end{pmatrix}} \approx  0.0017
}
$$
## Symmetry of $\sim \mathrm{Hyp}()$

The following hypergeometric distributions are identical 
$$
\mathrm{Hyp}(w,b,n)\quad \text{and}\quad \mathrm{Hyp}(n,w+b-n,w) 
$$
That is for two hypergeometric $\text{r.v's}$ $X$ and $Y$ such that 
$$
\begin{aligned}
 & X\sim \mathrm{Hyp}(w,b,n) \\
 \\
 & Y\sim \mathrm{Hyp}(n,w+b-n,w)
\end{aligned}
$$
then $X$ and $Y$ have the same distribution 

## Binomial vs. Hypergeometric

Both are discrete distributions taking on integer values between 0 and $n$ for some $n$ and both can be thought of as the number of successes in $n$ Bernoulli trials. 

However, for binomial distributions, the bernoulli trials performed are **independent**. But the bernoulli trials for a hypergeometric distribution, the bernoulli trials are **dependent** since the sampling is done without replacement. 

