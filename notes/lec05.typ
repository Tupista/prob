#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section$ 多维连续随机变量
#linebreak()

*Definition* $quad$ 联合分布函数 $F(x,y)=P(X<=x, Y<=y).$
- 有界性, 单调性, 右连续, 非负性 $P(a<X<=b,c<Y<=d)>=0.$

*Definition* $quad$ 如果存在 $f(x,y)>=0$ 使得 $F(x,y)=integral_(-oo)^x integral_(-oo)^y f(u,v)dif u dif v,$ 则称 $f(x,y)$ 为联合密度函数.
- 非负性, 正则性, $f$ 是 $F$ 的偏导数, 区域概率对应区域积分.

*Definition* $quad$ 边际分布函数 $F_X (x):=P(X<=x)=F(x,+oo),$ 边际密度函数 $f_X (x):=integral_(-oo)^oo f(x,y)dif y.$ 

*Definition* $quad$ 条件分布函数 $F(x|y)=integral_(-oo)^x f(u,y)/(f_Y (y)) dif u,$ 条件密度函数 $f(x|y)=f(x,y)/(f_Y (y)).$

*Definition* $quad$ 对于联合密度函数 $ f(x,y)=1/(2pi sigma_1 sigma_1 sqrt(1-rho^2)) exp(-1/(2(1-rho^2))dot ((x-mu_1)^2/sigma_1^2+(y-mu_2)^2/sigma_2^2-(2rho(x-mu_1)(y-mu_2))/(sigma_1 sigma_2))) $ 称 $X,Y$ 服从*二维正态分布*, 记为 $X,Y~N(mu_1,mu_2,sigma_1^2,sigma_2^2,rho).$

验证 $display(integral_(-oo)^(+oo) integral_(-oo)^(+oo) f(x,y)dif x dif y)=1$ 时, 考虑换元 $ u=((x-mu_1)/sigma_1-rho dot (y-mu_2)/sigma_2)/sqrt(1-rho^2), quad v=(y-mu_2)/sigma_2, $ 则原积分可以表示成 $display(integral integral C dot abs(partial(x,y)/partial(u,v))  dot exp(-1/2(u^2+v^2)) dif u dif v),$ 其中 $ abs(partial(x,y)/partial(u,v))=abs(partial(u,v)/partial(x,y))^(-1)=mat(1/(sigma_1 sqrt(1-rho^2)),-rho/(sigma_2 sqrt(1-rho^2)); 0,1/sigma_2; delim:"|")^(-1)=sigma_1 sigma_2 sqrt(1-rho^2). $

$X,Y$ 分别服从 $N(mu_1,sigma_1^2)$ 和 $N(mu_2,sigma_2^2).$

给定 $Y=y$ 或 $X=x$ 的条件下, $ X ~ N(mu_1+rho dot sigma_1/sigma_2 dot (y-mu_2), sigma_1^2 (1-rho^2)), \ Y~N(mu_2+rho dot sigma_2/sigma_1 dot (x-mu_1),sigma_2^2(1-rho^2)). $ 这相当于说 $X,Y$ 独立 $<==> rho=0.$

对于相互独立的连续随机变量 $X,Y$ 有和离散情形类似的结论: 

- $E(X+Y)=E(X)+E(Y),$
- $E(X Y)=E(X) dot E(Y),$
- $"Var"(X plus.minus Y)="Var"(X)+"Var"(Y).$

*Definition* $quad$ *条件数学期望* $E(X bar Y=y)=display(integral_(-oo)^(+oo) f(x bar y) dot x dif x.)$

此时重期望公式同样成立.

*Definition* $quad$ *协方差* $"Cov"(X,Y)=E((X-E(X))(Y-E(Y)))=E(X Y)-E(X)E(Y).$

*Proposition* $quad$ 对于 $X,Y~N(mu_1,mu_2,sigma_1^2,sigma_2^2,rho), thick "Cov"(X,Y)=rho sigma_1 sigma_2.$

*Definition* $quad$ *相关系数* $"Corr"(X,Y)=display("Cov"(X,Y)/(sigma(X)sigma(Y))).$

*Proposition* $quad$ 对于二维正态分布, *不相关*等价于*相互独立*.

*Proposition* $quad$ 对于 $X,Y,$ 考虑随机变量 $Z=X+Y,$ 则 $display(f_Z (z)=integral_(-oo)^(+oo) f_X (x) dot f_Y (z-x)dif x).$

*Proposition* $quad$ 若 $X~N(mu_1,sigma_1^2), Y~N(mu_2,sigma_2^2),$ 则 $Z=X+Y~N(mu_1+mu_2,sigma_1^2+sigma_2^2).$

*Proposition* $quad$ 若 $X~Gamma(alpha_1,lambda),Y~Gamma(alpha_2,lambda),$ 则 $X+Y~Gamma(alpha_1+alpha_2,lambda).$

*Proposition* $quad$ 对于 $u=u(x,y),v=v(x,y),$ 有 $U=u(X,Y),V=v(X,Y)$ 的联合密度函数为 $ g(u,v)=f(x(u,v),y(u,v)) dot abs(partial(x,y)/partial(u,v))=f(x(u,v),y(u,v)) dot abs(partial(u,v)/partial(x,y))^(-1). $

*Definition* $quad$ 对于多维随机变量 $bold(X)=(X_1,dots, X_n),$ 定义 $E(bold(X))=(E(X_1),dots,E(X_n)),$ \ $"Cov"(bold(X))=E((bold(X)-E(bold(X)))(bold(X)-E(bold(X)))^T).$

*Proposition* $quad "Cov"(bold(X))$ 半正定.

*Proposition* $quad$ 多维高斯分布的联合密度函数可以用协方差矩阵表示: 
    $ f(bold(x))=1/(2pi(det B)^(1/2)) exp(-1/2 dot (bold(x)-bold(mu))^T
      B^(-1) (bold(x)-bold(mu))) $

*Proposition* $quad$ 若 $bold(X)~N(bold(mu),bold(B)), bold(Y)=bold(A X+b),$ 则 
    $ bold(Y)~N(bold(A mu+b), bold(A B A)^T). $ 
这里要求  $bold(A)$ 行满秩.