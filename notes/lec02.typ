== $section$ Discrete Random Variables
#linebreak()

*Definitions* $quad$ 离散随机变量, 分布列, $n-$重伯努利试验, 期望, 方差, 标准差.

*Proposition* $quad$ 对于 $X~B(n,p), E(X)=n p, E(X^2)=n(n-1)p^2+n p.$

*Proposition (Markov)* $quad$ 对于非负随机变量 $X, P(X>=a dot E(X))<=a^(-1).$

*Proposition* $quad "Var"(X)=E(X^2)-E^2(X).$

*Proposition (Chebyshev)* $quad$ 对于随机变量 $X, P(abs(X-E(X))>=c dot sigma(x))<=c^(-2).$

*Definitions*

- 二项分布: $X~B(n,p), P(X=k)=binom(n,k)p^k (1-p)^(n-k).$

- 泊松分布: $X~pi(lambda), P(X=k)=1/k! lambda^k e^(-lambda).$

  - $E(X)="Var"(X)=lambda.$

  *Theorem (Poisson)* $quad$ 对于一列 $p_1,p_2,dots,$ 若 $display(lim_(n->+oo) n dot p_n)=lambda,$ 则 $forall k>0,$ $ lim_(n->+oo) binom(n,k) p_n^k (1-p_n)^(n-k)=1/k! lambda^k e^(-lambda). $

- 几何分布: $X~G(p), P(X=k)=p(1-p)^(k-1).$

  - $"E"(X)=p^(-1), "Var"(X)=(1-p)/p^2.$

  - 无记忆性: $forall m,n>0, P(X>m+n bar X>m)=P(X>n).$

- 负二项分布: $X~"NB"(r,p), P(X=k)=binom(k-1,r-1)p^r (1-p)^(k-r).$

  - 可以认为 $X=sum_(i=1)^r X_i,$ 其中 $X_i ~ G(p).$