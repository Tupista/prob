== $section$ Continuous Random Variable
#linebreak()

*Definition* $quad$ 分布函数 $F(x)=P(X<=x).$

- 有界性 $F(x) in [0,1], F(-oo)=0, F(+oo)=1.$ 
- 单调性, $F(x)$ 单调增.
- 右连续, $F(x_0^+)=F(x_0).$

*Definition* $quad$ 概率密度函数 $f(x):$ 若存在 $f(x)$ 满足 $F(x)=display(integral_(-oo)^x f(t)dif t),$ 则 $f(x)$ 是 $X$ 的概率密度函数, $X$ 称为连续随机函数.

- 非负性, $f(x)>=0$.

- 正则性, $display(integral_(-oo)^(+oo)f(x)dif x=0.)$

- 在 $F(x)$ 导数存在的点, $f(x)=F'(x).$

*Definition* $quad$ 期望 (要求绝对可积), 方差, 标准差.

马尔可夫不等式和切比雪夫不等式仍然成立, 形式完全相同. 

*Examples*

- 均匀分布: $X~U(a,b), E(X)=(a+b)/2, "Var"(X)=(b-a)^2/12.$

- 标准正态分布 (高斯分布): $ f(x)=1/sqrt(2pi)dot exp(-x^2/2).  $
  
  - $E(X)=0, "Var"(X)=1.$

- 正态分布: 对于 $mu,sigma>0,$ 记 $X~N(mu,sigma^2)$ 表示 $ f(x)=1/(sqrt(2pi)sigma) dot exp(-(x-mu)^2/(2sigma^2)). $

  - *Proposition* $quad$ 若 $X~N(mu,sigma^2),$ 则 $U=(X-mu)\/sigma ~N(0,1).$

    $U$ 也称为 $X$ 的标准化随机变量, 无论 $X$ 是否服从正太分布.

    *Example* $quad$ 若 $X~B(1,0.5),$ 则 $P(U=-1)=P(U=1)=0.5.$

- 指数分布: $X~"Exp"(lambda), f(x)=lambda e^(-lambda x) thick (x>=0).$

  - 无记忆性: $P(X>s+t bar X>s)=P(X>t).$

- 伽马分布: $X~Gamma(alpha, lambda), f(x)=lambda^alpha/Gamma(alpha) x^(alpha-1)e^(-lambda x).$

  - 伽马函数 $Gamma(alpha)=integral_0^(+oo) x^(alpha-1) e^(-x)dif x, Gamma (alpha+1)=alpha Gamma(alpha).$

  $E(X)=alpha\/lambda, E(X^2)=(alpha(alpha+1))\/lambda^2 thick ==> "Var"(x)=alpha\/lambda^2.$

  - 指数分布是 $alpha=1$ 的特例.

  - 特例 $alpha=n\/2, lambda=1\/2, n in NN^*.$ 这称为自由度为 $n$ 的卡方分布 $X~chi^2(n).$
  
#pagebreak()

下面讨论连续变量函数的分布. 注意到概率密度函数不能直接相加.

*Proposition* $quad$ 设 $X$ 为连续随机变量, $y=g(x)$ 严格单调, 其反函数 $h(y)$ 有连续导数, 则 $Y=g(X)$ 的概率密度函数为 $ f_Y (y)=f_X (h(y)) dot abs(h'(y)). $