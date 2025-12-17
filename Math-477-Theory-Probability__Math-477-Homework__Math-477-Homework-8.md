# Problem 1

<!-- PAGETOC -->

## a)

Given 
$$
f_{X,Y} = 
\begin{align}
\begin{cases}
\frac{1}{x^{2}y^{2}}\quad  & x\geq 1, y\geq 1 \\
0 & \text{otherwise}
\end{cases}
\end{align}
$$
From $U=XY \implies X = \frac{U}{Y}$. Substitute into $V=\frac{X}{Y}=\frac{U}{Y}\cdot Y \implies Y = \sqrt{ \frac{U}{V} }$. Then substituting $Y=\frac{U}{X}$ we get that $V=\frac{X}{U}\cdot X \implies X =\sqrt{ UV }$. To find $f_{UV} =f_{XY}(x,y)|J|^{-1}$, we compute the determinant $J$ 
$$
|J| = 
\begin{vmatrix}
\frac{ \partial u }{ \partial x }  & \frac{ \partial u }{ \partial y }  \\
\frac{ \partial v }{ \partial x }  & \frac{ \partial v }{ \partial y } 
\end{vmatrix}
= 
\begin{vmatrix}
\frac{1}{2\sqrt{ uv }} & \frac{\sqrt{ u }}{2\sqrt{ v^{3} }} \\
\frac{1}{2\sqrt{ uv }} & -\frac{\sqrt{ u }}{2v^{3/2}}
\end{vmatrix}
\implies
\begin{vmatrix}
\frac{J(x,y)}{J(u ,v )} 
\end{vmatrix}
=
\frac{1}{2v}
$$
Now substitute back into
$$
f_{U,V}(u,v)= f_{X,Y}(x(u,v),y(u,v))\cdot |J|
$$
Since $x=\sqrt{ uv }$ and $y=\sqrt{ \frac{u}{v} }$ , 
$$
f_{X,Y}(x,y)=\frac{1}{x^2y^2}=\frac{1}{(uv)\left( \frac{u}{v} \right)}=\frac{1}{u^{2}}
$$
$$
f_{U,V} =|J|\cdot \frac{1}{u^{2}}= \frac{1}{2v}\cdot \frac{1}{u^{2}} = \frac{1}{2u^{2}v}
$$
Since we have that $x,y\geq 1$ 
$$
\sqrt{ uv }\geq 1 \implies u\geq \frac{1}{v} \quad \text{ and }\quad \sqrt{ \frac{u}{v} } \geq 1 \implies u\geq v
$$
Hence
$$
u\geq \text{max}\left\{ v, \frac{1}{v} \right\} 
$$
Thus, the distribution function is
$$
f_{U,V} =
\begin{align}
\begin{cases}
\frac{1}{2u^{2}v},\quad  & u\geq \text{max}\left\{ v, \frac{1}{v} \right\}, v>0  \\
0 & \text{otherwise}
\end{cases}
\end{align}
$$
## b)

for $f_{U}(u)$ 
$$
f_{U}(u)=\int_{0}^{\infty}f_{U,V}   \, dv
$$
So integrate over $v>0$ satisfying $u\geq \text{max}\left\{ v, \frac{1}{v} \right\}$ $\implies$ $v \in\left[ \frac{1}{u}, u \right]$
$$
f_{U}(u)= \int_{\frac{1}{u}}^{u} \frac{1}{2u^{2}v} \, dv =\frac{1}{2u^{2}}[\ln v]_{\frac{1}{u}}^{u} = \frac{\ln u}{u^{2}}, \quad u\geq 1
$$
and for $f_{V}(v)$, for fixed $v>0$ the constraint is $u\geq\text{max}\left\{ v, \frac{1}{v} \right\}$ so integrate
$$
f_{V}(v) = \int_{max\left\{ v,1 /v \right\} }^{\infty} \frac{1}{2u^{2}}v \, du 
$$
Which gives us
$$
f_{V}(v)= 
\begin{cases}
\frac{1}{2}, \quad  & 0 <v \leq 1 \\
\frac{1}{2v^{2}},\quad  & v>1
\end{cases}
$$
and 
$$
f_{U}(u) = \frac{\ln u}{u^{2}},\quad u \geq 1
$$





# Problem 2

To compute $E[X^{2}|Y=y]$, find the marginal $f_{Y}(y)$ 
$$
\int_{0}^{\infty} f_{X,Y}(x,y) \, dx = \int_{0}^{\infty} \frac{e^{-x/y}e^{-y}}{y} = \, dx 
$$
let $u=\frac{x}{y}\implies x=yu$ and $dx=ydu$  so
$$
e^{-y}\int_{0}^{\infty} e^{-u} \, du = e^{-y}\cdot 1 = e^{-y}
$$
So we get that
$$
f_{Y}(y) =e^{-y},\quad y>0
$$
The conditional density is 
$$
f_{X|Y}(x|y)=\frac{f_{X,Y}(x,y)}{f_{Y}(y)} =\frac{\frac{e^{-x/y}e^{-y}}{y}}{e^{-y}} = \frac{1}{y}e^{-x/y},\quad x>0
$$
So given $Y=y$, $X$ is exponential with $\lambda= \frac{1}{y}$. Now compute
$$
E[X^{2}|Y=y] = \int_{0}^{\infty} x^{2} \frac{1}{y}e^{-x/y} \, dx 
$$
Now let $t=\frac{x}{y} \implies x=yt$ and $dx=ydt$ so
$$
E[X^{2}|Y=y] = \int_{0}^{\infty} (yt)^{2} \frac{1}{y}e^{-t}y \, dt =y^{2}\int_{0}^{\infty} t^{2}e^{-t} \, dt 
= 2y^{2},\quad y>0
$$
Therefore
$$
E[X^{2}|Y=y] = 2y^{2},\qquad y>0
$$

# Problem 3

Let $X$ be the total number of matches (people who receive their own ID). For each person $i$
where $i=1,2,\dots 1000$ define
$$
X_{i} = 
\begin{cases}
1,\quad \text{if person } i \text{ gets card } i \\
0,\quad \text{otherwise} \\ 
\end{cases}
$$
Then 
$$
X = X_{1} + X_{2}+\dots X_{1000}
$$
So for any fixed person $i$, all 1000 cards are equally likely, so have that
$$
P(X_{i}=1) = P(\text{person } i \text{ gets card } i) = \frac{1}{1000}
$$
Thus
$$
E[X_{i}]=1\cdot \frac{1}{1000} +0\cdot \frac{999}{1000}= \frac{1}{1000}
$$
Any by linearity of expectation, 
$$
E[X]= \sum_{i=1}^{1000} E[X_{i}] = 1000\cdot \frac{1}{1000}=1
$$

# Problem 4
## a) 

Let $S = X_{1}+X_{2}$ and $T = X_{2}+X_{3}$, the variances are 
$$
\text{Var}(S) = \text{Var}(X_{1})+\text{Var}(X_{2})+2\text{Cov}(X_{1},X_{2})
= 2
$$
Similarly $\text{Var}(T_{2})$ and the covariances $\text{Cov}(S,T)$ are
$$
\begin{aligned}
Cov(X1​+X2​,X2​+X3​)=Cov(X1​,X2​)+Cov(X1​,X3​)+Cov(X2​,X2​)+Cov(X2​,X3​)
\end{aligned}
$$
All terms with different indices are $0$ and $\text{Cov}(X_{2},X_{2})=\text{Var}(X_{2})= 1$. So $\text{Cov}(S,T)=1$ and we find that
$$
\text{Corr}(X_{1}+X_{2}+X_{3}+X_{4}) = \frac{1}{\sqrt{ 2\cdot 2 }} = \frac{1}{2}
$$
## b)

Here let $S = X_{1}+X_{2}$ and $U = X_{3}+X_{4}$  and the variances are 
$$
\text{Var}(S) = 2 = \text{Var}(U)
$$
The covariances $\text{Cov}(S,U)$ are 
$$
Cov(S,U)=Cov(X1​+X2​,X3​+X4​)=\sum_{i \in \left\{ 1,2 \right\} }^{} \sum_{j \in \left\{ 3,4 \right\} }^{} \text{Cov}(X_{i},X_{j}) = 0
$$
Since all the pairs are uncorrelated so 
$$
\text{Corr}(X_{1}+X_{2}+X_{3}+X_{4}) = \frac{0}{\sqrt{ 2\cdot2 }} = 0
$$



