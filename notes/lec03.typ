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