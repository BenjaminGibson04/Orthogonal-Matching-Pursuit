# Orthogonal-Matching-Pursuit
OMP calculates sparse solutions to a system of linear equations

Code creaeted in Matlab

Let $$A\in\mathbb{R}^{m\times n}$$, $$b\in \mathbb{R}^m$$ for the system $$Ax=b$$. Let $$x_0 = 0, r_0 = b, S_0=\emptyset, k=0$$. For stopping criteria, run the while loop 100 times. The general outline for the OMP is as follows:

while number of iterations $$k \leq 100 $$:

* $$ g_k = A^Tr_k$$

* $$j_{k+1} = supp(H_1(g_k))$$, where supp() is the support operator and $$H_1()$$ is the hard thresholding operator. $$supp(x) = \lbrace i \mid x_i \neq 0 \rbrace$$.  $$H_1(x)$$ sets all entries of $$x$$ to zero except for the largest entry, in terms of absolute value. 

* $$S_{k+1} = S_k \cup \lbracej_{k+1}\rbrace$$

* $$(x_{k+1})_{S_{k+1}} = A^+_{S_{k+1}}b, (x_{k+1})_{S^c_{k+1}} = 0$$, where $$A^+$$ is the pseudo-inverse of $$A$$.
