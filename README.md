# Orthogonal-Matching-Pursuit
OMP calculates sparse solutions to a system of linear equations

Code creaeted in Matlab

Let $$A\in\mathbb{R}^{m\times n}$$, $$b\in \mathbb{R}^m$$ for the system $$Ax=b$$. Let $$x_0 = 0, r_0 = b, S_0=\emptyset, k=0$$. For stopping criteria, run the while loop 100 times. The general outline for the OMP is as follows:

while number of iterations $$k \leq 100 $$:

* $$ g_k = A^Tr_k$$
