# 7.7 Moment Generating Functions

<!-- PAGETOC -->


The moment generating function $M(t)$ of the random variable $X$ is defined for all real values of $t$ by 
$$
\begin{aligned}
M(t)  & = E[e^{tX}] \\
 \\
 & = \begin{cases}
\sum_{x}^{} e^{tx }p(x),\qquad  & X\text{ is discrete with pmf } p(x) \\
 \\
\int_{-\infty}^{\infty} e^{tx}f(x) \, dx,\qquad  & X\text{ is continuous with density }f(x)
\end{cases}
\end{aligned}
$$
We call $M(t)$ the moment generating function because all of the moments of $X$ can be obtained by successively differentiating $M(t)$ and then evaluating the result at $t=0$. 

For example 
$$
\begin{aligned}
M'(t)  & = \frac{ d  }{ d t }E\left[ e^{tX} \right]  \\
 \\
 & =E\left[ \frac{ d  }{ d t }(e^{tX})  \right]  \\
 \\
 & =E\left[ Xe^{tX} \right]  
\end{aligned}
$$
where we assumed that 
$$
\frac{ d  }{ d t } \left[ \sum_{x}^{} e^{tX}p(x) \right] = \sum_{x}^{} \frac{ d  }{ d t }  \left[ e^{tX}p(X) \right] 
$$
in the discrete case and 
$$
\frac{ d  }{ d t }\left[ \int e^{tx}f(X) \right] = \int \frac{ d  }{ d t }  \left[ e^{tx}f(x) \right] dx
$$
in the continuous case.  These assumptions can almost always be justified and hold for all of the distributions mentioned.  Hence if we evaluate $M'(t=0)$, we obtain 
$$
M'(0) =E[X]
$$
and 
$$
\begin{aligned}
M''(t)  & = \frac{ d  }{ d t }M'(t)  \\
 \\
 & =\frac{ d  }{ d t } E[Xe^{tX}]  \\
 \\
\ & =E\left[ \frac{ d  }{ d t } (Xe^{tX}) \right]  \\
 \\
 & =E\left[ X^{2}e^{tX} \right]  
\end{aligned}
$$
thus 
$$
M''(0) = E[X^{2}]
$$
and in general, the $n^{\text{th}}$ derivative of $M(t)$ is given by 
$$
M^{n}(t) = E[X^{n}e^{tX}],\quad n\geq 1
$$
implying that 
$$
M^{n}(0) =E[X^{n}],\quad n\geq 1
$$
