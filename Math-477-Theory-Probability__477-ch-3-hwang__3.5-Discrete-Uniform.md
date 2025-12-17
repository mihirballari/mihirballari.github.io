# 3.5 Discrete Uniform

<!-- PAGETOC -->


## Discrete Uniform Distributions 

Let $C$ be a finite, nonempty set of numbers. Choose one of these numbers uniformly at random (which means that all values in $C$ are equally likely) and call it $X$ 

Then $X$ is said to have a Discrete Uniform Distribution with parameter $C$ and is denoted by 
$$
\boxed{
X \sim D \mathrm{Uni}(C) 
}
$$
## Discrete Uniform PMF's 

The PMF of $X \sim D \mathrm{Uni}(C)$ is 
$$
\boxed{
P(X=x) = \frac{1}{|C|}
}
$$
for $x \in C$ and 0 otherwise. 

Since a PMF must sum to 1, experiments based on Discrete Uniform distributions reduce to counting problems. Specifically for $X \sim D \mathrm{Uni}(C)$ and any $A \subset C$, we have 
$$
P(X\in A) =\frac{|A|}{|C|}
$$
## Ex. Random Slips of Paper 

There are 100 slips of paper, each with one of the numbers $x \in \{ 1,2,\dots,100 \}$ on it, in a hat (no number appears more than once). Five slips are drawn, one at a time. 

## First consider random sampling with replacement (with equal probabilities). 
#### a. What is the distribution of how many of the drawn slips have a number that is atleast 80?

There are $100-80+1=21$ valid outcomes. Since each outcome is equally likely, the success probability (a drawn slip has value $x\geq 80$) is
$$
P(x\geq 85) = \frac{21}{100} = 0.21
$$
Let $X$ denote the number of slips drawn with value $80,81\dots,100$, then it follows that 
$$
\underset{  }{ X \sim \mathrm{Bin}\left( 5, 0.21 \right)   }
$$
#### b. What is the distribution of the value of the $j^{th}$ draw for $j \in [1,5]$?

Let $X_{j}$ be the value of the $j^{th}$ draw. Of all the possible values that $X_{j}$ can take on, it is equally likely to pick any value from the sample space $S =\{ 1,2,\dots 100 \}$ so it follows that 
$$
\boxed{
X_{j}\sim D \mathrm{Uni}(S) \implies X_{j} \sim D \mathrm{Uni}(1,2,\dots 100) 
}
$$
#### c. Pr. that the number 100 is drawn atleast once? 

Let $X_{j}$ be the value of the $j ^{th}$ draw
$$
P(X_{j}=100\text{ for atleast one }j) = 1 - P(X_{j}\neq 100\text{ for all }j)
$$
Then for any single draw, the probability of not drawing a slip with 100 is
$$
P(X_{j}\neq 100) = \frac{99}{100}
$$
So for 5 independent draws, 
$$
P(X_{1}\neq 100,\dots,X_{5}\neq 100) = \left( \frac{99}{100} \right)^{5}
$$
Then it follows that 
$$
\boxed{
P(X_{j}=100\text{ for atleast one }j)=1-\left( \frac{99}{100} \right)^{5}\approx 0.95099
}
$$
### Now consider random sampling without replacement (with all sets of five slips equally likely to be chosen). 
#### d. What is the distribution of how many of the drawn slips have a value that is atleast 80?

This is analogous to drawing $n$ balls from an urn with $w$ white and $b$ black balls and $N=w+b$. Here $w$ is our "winner" population which is $100-80+1=21$ 

Then $b$ would be the "bad" population which is $N-w = 100-21=79$ and finally the last parameter would be the the number of times we sample so $n=5$ since we pick 5 slips without replacement. 

If we let $X$ denote the number of slips that have a value of atleast 80, then 
$$
\boxed{
X \sim \mathrm{Hyp}(21,79,5) 
}
$$
#### e. What is the distribution of the value of the $j^{th}$ draw for $j \in [1,5]$?

Let $Y_{j}$ denote the value of the $j^{th}$ draw. Similarly, of all the possible values that $Y_{j}$ can take on, it is equally likely to take on any value in the sample space of the experiment 
$S = \{ 1,2,\dots,100 \}$, so we have that 
$$
\boxed{
Y_{j} \sim D \mathrm{Uni}(S) \implies Y_{j} \sim (1,2,\dots,100) 
}
$$
#### f. Pr. that 100 is drawn in the sample? 

Let $Y_{j}$ be the value of the $j ^{th}$ draw. Since we sample without replacement now, the events $Y_{1}=100,\dots,Y_{5}=100$  are disjoint. So we write that 
$$
P(Y_{j}=100\text{ for some }j ) = P(Y_{1}=100)+\cdots +P(Y_{5}=100)
$$
Via complements, we can rewrite as 
$$
\begin{aligned}
P(Y_{j}=100\text{ for some }j)  & =1-P(Y_{j}\neq 100\text{ for all }j) \\
 \\
 & =1-P(Y_{1}\neq 100,\dots,Y_{5}\neq 100) \\
 \\
 & =1-\frac{99}{100}\cdot \frac{98}{99}\cdot \frac{97}{98}\cdot \frac{96}{97}\cdot \frac{95}{96} \\
 & =1-\frac{95}{100}
\end{aligned}
$$
or more intuitively, each of the 100 slips are equally likely to end up in the 5 positions that are drawn which implies that the slip with value 100 has a 5/100 chance of being drawn. So our final probability is 
$$
\boxed{
P(Y_{j\in[1,5]}=100 )= 1-\frac{95}{100}=\frac{5}{100}
}
$$
