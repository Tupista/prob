#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section$ $n$-Dimensional Random Variables
#linebreak()

*Definitions* $quad$ 联合分布列 $p_(i j)$, 边际分布列 $p_i, p_j$, 条件分布列 $p_(i|j),p_(j|i)$.

*Definitions* $quad$ 

- 给定二维随机变量 $(X,Y),$ 若 $forall x,y$ 都有 #h(1fr) $ P(X=x,Y=y)=P(X=x) dot P(Y=y) $ 则称 $X,Y$ 相互独立.

- 对于 $n$ 维随机变量 $(X_1,dots,X_n),$ 若对于任意 $n$ 个实数 $x_1,dots,x_n$ 都有 $ P(inter.big_(i in [n]) (X_i=x_i))=product_(i in [n]) P(X_i=x_i) $ 则称 $X_1,dots,X_n$ 相互独立. 

- 若 $X_1,dots,X_n$ 相互独立且服从相同的分布, 则称 $X_1,dots,X_n$ 独立同分布.

  *Examples*

  - $Y~B(n,p),$ 则 $Y=X_1+dots+X_n, X_i ~ B(1,p).$
  - $Y~"NB"(r,p),$ 则 $Y=X_1+dots+X_r, X_i~G(p).$

对于*任意*的离散随机变量 $X_1,dots,X_n,$ 都有 $E(X_1+dots+X_n)=E(X_1)+dots+E(X_n).$

*Proposition* $quad$ 对于独立离散随机变量的 $X,Y,$ 有 $E(X Y)=E(X)E(Y).$ 这一命题可以推广到 $n$ 个变量的情形.

上述命题的逆命题一般不成立, 例如 $(X,Y)$ 等概率取 $ {(0,0),(1,1),(1,-1)}.$

*Proposition* $quad$ 对于*独立*离散随机变量 $X_1,dots,X_n,$ 有 $ "Var"(X_1 plus.minus dots plus.minus X_n)="Var"(X_1)+dots+"Var"(X_n). $

*Definition* $quad$ 两个离散随机变量的*协方差*定义为 $ "Cov"(X,Y)=E((X-E(X))(Y-E(Y)))=E(X Y)-E(X)E(Y). $

协方差有显然的性质
- $"Cov"(X,X)="Var"(X),$
- $"Cov"(X,Y)="Cov"(Y,X),$
- $"Cov"(a X,b Y)=a b dot "Cov"(X,Y),$
- $"Cov"(X_1+X_2,Y)="Cov"(X_1,Y)+"Cov"(X_2,Y).$
- 对于相互独立的 $X,Y$ 有 $"Cov"(X,Y)=0.$ 反之则不成立.
- $"Var"(X_1+dots+X_n)=sum_i "Var"(X_i) + 2 sum_(i<j) "Cov"(X_i,X_j).$

*Definition* $quad$ 将 $E(X bar Y=y)$ 记为 $g(y),$ 则 $E(X bar Y)=g(Y)$ 是一随机变量.

*Proposition* $quad E(E(X bar Y))=E(X).$

直观的理解是: 可以设定一个事件 $Y,$ 在 $Y$ 的各种可能性下计算 $X$ 的条件期望, 最后按 $Y$ 的概率加权即为 $E(X).$

*Proposition* $quad$ 对于相互独立同分布的 $X_1,X_2,dots,$ 若有整数随机变量 $N,$ 则 $ E(sum_(i <=N) X_i)=E(X_i)E(N). $

最后, 二项分布和泊松分布有如下的叠加性:

*Proposition* $quad$ 对于 $X_1~B(n,p), X_2~B(m,p),$ 有 $X_1+X_2~B(n+m,p).$

*Proposition* $quad$ 对于 $X_1~pi(lambda_1),X_2~pi(lambda_2),$ 有 $X_1+X_2~pi(lambda_1+lambda_2).$