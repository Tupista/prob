#show heading: set block(below: 1.2em)

== Question 1

有
  $ L(theta)
    &=product_(i=1)^n 1_(x_i>=theta) dot theta/(x_i^2) \
    &=1_(x_1>=theta,dots,x_n>=theta) dot theta^n/(product x_i^2), $
于是 $theta$ 的最大似然估计为 $hat(theta)=min{x_1,dots,x_n}.$

对于任意 $epsilon>0,$ 考虑 $lim_(n->oo) P(abs(hat(theta)_n-theta)>epsilon).$ 记
$p:=P(X<=theta+epsilon)>0,$ 则
  $ P(abs(hat(theta)_n-theta)>epsilon)=(1-p)^n->0, $
于是 $hat(theta)$ 是渐进无偏估计量. 显然 $EE(hat(theta))>theta,$ $hat(theta)$ 
不是无偏估计量.

下面计算均方误差, 先算 $EE(hat(theta))$ 和 $EE(hat(theta)^2).$
  $ F_(hat(theta)) (t)
    =1-P(hat(theta)>=t)
    =1-(theta/t)^n, \

    f_(hat(theta)) (t)
    =F'(t)
    =-n(theta/t)^(n-1) dot (-theta/t^2)
    = (n theta^n)/t^(n+1), \

    EE(hat(theta))
    =integral_(theta)^(+oo) t f(t)dif t
    =n theta^n integral_theta^(+oo) t^(-n)dif t 
    =n/(n-1) theta, \
    
    EE(hat(theta)^2)
    =integral_theta^(+oo) t^2 f(t)dif t
    =n theta^n integral_theta^(+oo) t^(-n+1)dif t
    =n/(n-2) theta^2. $
于是
  $ "MSE"(hat(theta))
    &=EE((hat(theta)-theta)^2) 
    =EE(hat(theta)^2)-2theta dot EE(hat(theta))+theta^2 \
    &=(1+n/(n-2)-(2n)/(n-1)) theta^2 \
    &=(2 theta^2)/(n^2-3n+2). $
由 $"MSE"(hat(theta))->0$ 知 $hat(theta)$ 是一致估计量.

考虑枢轴量 $G=hat(theta)\/theta,$
  $ F_G (t)=F_hat(theta) (theta t)=1-t^(-n), quad t>=1. $
取 $t=alpha^(-1/n)$ 即有 $P(theta>t^(-1) hat(theta))=F_G (t)=1-alpha,  
[alpha^(1/n) hat(theta),thick hat(theta)]$ 即为置信度为 $1-alpha$ 的置信区间.

#pagebreak()

== Question 2

+ 已知 $sum x_i~Gamma(n,lambda),$ 于是有 #h(1fr)
    $ EE(hat(lambda)_0)
      &=n dot integral_0^(+oo) lambda^n/Gamma(n) x^(n-1) e^(-lambda x) dot 1/x dif x \
      &= n lambda dot integral_0^(+oo) lambda^(n-1)/Gamma(n) x^(n-2) e^(-lambda x) dif x \ 
      &=n lambda dot Gamma(n-1)/Gamma(n)\
      &=n/(n-1) lambda. $
  于是 $hat(lambda)_0$ 不是无偏估计量, 是渐进无偏估计量.

+ $hat(lambda)_1:=display((n-1)/n hat(lambda)_0)$ 是无偏估计量.

+ $hat(lambda)_1$ 的均方误差即为自身方差. 考虑计算 $EE(hat(lambda)_0^2).$
    $ EE(hat(lambda)_1^2)
      &=n^2 dot integral_0^(+oo) lambda^n/Gamma(n) x^(n-1) e^(-lambda x) dot 1/x^2 dif x\
      &=n^2/((n-1)(n-2)) lambda^2. $
  于是 
    $ "MSE"(hat(lambda)_1)
      &=(n-1)^2/n^2 "Var"(hat(lambda)_0^2)\
      &=(n-1)^2/n^2 (n^2/((n-1)(n-2)) lambda^2-n^2/(n-1)^2 lambda^2)\
      &=1/(n-2) lambda^2. $
  $"MSE"(hat(lambda)_1)->0,$ 于是它是一致估计量.

+ 考虑 $2lambda X_i$ 服从的分布 $g$:
    $ g(x)=f(x/(2lambda))/(2lambda)=1/2 e^(-x/2),$ 
  即 $2lambda X_i~"Exp"(1/2), 2 lambda sum X_i~chi^2 (n).$ 
  令 $t_0:=F^(-1) (1-alpha),$ 则
    $ P(0<=lambda<=t_0/(2n overline(X)))=P(0<=2 lambda sum X_i<=t_0)=1-alpha. $
  $[0,(F^(-1)(1-alpha))/(2n overline(X))]$ 即为所求.

#pagebreak()

== Question 3

+ 有 #h(1fr)
    $F_X (x)=integral_0^x (theta+1)t^theta dif t=x^(theta+1), 
      quad forall 0<x<1. $
  于是 
    $ F_X (x)=cases(
      0 quad &"if" x<=0",", 
      x^(theta+1) quad &"if" 0<x<1",",
      1 quad &"if" x>=1.
    ) $

+ 有
    $ EE(X)
      &=integral_0^1 (theta+1)x^theta dot x dif x
      =(theta+1)/(theta+2), $
  即 
    $ theta=1/(1-EE(X))-2. $
  替换后即得
    $ hat(theta)_1=1/(1-overline(X))-2. $

+ 对概率密度函数取对数:
    $ sum_(i=1)^n ln f(x_i)
      &=sum_(i=1)^n ln(theta+1)+theta ln x_i\
      &=n ln(theta+1)+theta sum ln x_i. $
  取导数得到
    $ n/(theta+1)+sum ln x_i=0, $
  即
    $ hat(theta)_2=-n/(sum ln x_i)-1. $
  考虑 $ln X_i$ 服从的分布:
    $f_(ln X) (x)=f_X (e^x) dot e^x=(theta+1)e^((theta+1)x), $
  于是 $-ln X$ 服从 $"Exp"(theta+1), -sum ln X_i$ 服从 $Gamma(n,theta+1).$
  代入计算有
    $ EE(hat(theta)_2)
      &=-1+integral_0^(+oo) n/x dot (theta+1)^n/Gamma(n) x^(n-1) e^(-(theta+1)x)dif x\
      &=-1+n (theta+1) dot Gamma(n-1)/Gamma(n) \
      &=-1+n/(n-1) (theta+1)\
      &=n/(n-1) theta+1/(n-1). $
  于是 $hat(theta)_2$ 不是无偏估计量, 是渐进无偏估计量.

+ 约定 $K:=-sum ln X_i~Gamma(n,theta+1).$ 有
    $ EE((hat(theta)_2-theta)^2)
      &=EE((hat(theta)_2)^2)-2theta EE(hat(theta_2))+theta^2, $
  其中
    $ EE((hat(theta)_2)^2)
      &=EE(n^2/K^2)-2 EE(n/K)+1\
      &=EE(n^2/K^2)-2 (n(theta+1))/(n-1)+1, $
  而 
    $ EE(n^2/K^2)
      &=n^2 integral_0^(+oo) 1/k^2 dot (theta+1)^n/Gamma(n) k^(n-1) e^(-(theta+1)k)dif k\
      &=n^2 dot (theta+1)^2/((n-2)(n-1)). $
  于是 
    $ "MSE"(hat(theta)_2)
      &=n^2/((n-2)(n-1)) (theta+1)^2-((2n(theta+1))/(n-1))+1-2theta dot (n/(n-1) theta+1/(n-1))+theta^2\
      &=(n^2/((n-2)(n-1))-(2n)/(n-1)+1)theta^2+((2n^2)/((n-2)(n-1))-(2n)/(n-1)-2/(n-1))theta\
        &+(n^2/((n-2)(n-1))-(2n)/(n-1)+1)\
      &=((theta+1)^2(n+2))/((n-2)(n-1)). $
  有 $"MSE"(hat(theta)_2)->0,$ 于是它是一致估计量.

== Question 4 

+ 有 #h(1fr)
    $ sum ln P(X=x_i)
      &=sum ln (lambda^(x_i)/(x_i !) e^(-lambda))\
      &=ln lambda dot sum x_i-n lambda-sum ln (x_i !), $
  求导有
    $ 1/lambda dot sum x_i-n=0, $
  于是 $overline(X)$ 确实是 $lambda$ 最大似然估计, 于是 $hat(p)_1$ 亦是 
  $e^(-lambda)$ 最大似然估计.

  记 $Y:=sum_(i=1)^n X_i,$ 则 $Y~pi(n lambda).$ 利用提示中的结论有
    $ EE(hat(p)_1)=EE(e^(-1/n Y))=e^(n lambda(e^(-1/n)-1)). $
  于是 $hat(p)_1$ 不是无偏估计量. 利用泰勒展开
    $ e^(-1/n)-1=-1/n+O(1/n^2) $
  可知 $hat(p)_1$ 是渐进无偏估计量. 

  计算 $hat(p)_1$ 的均方误差:
    $ EE((hat(p)_1-p)^2)
      &=EE(hat(p)_1^2)-2p EE(hat(p)_1^2)+p^2\
      &=e^(n lambda (e^(-2/n)-1))-2e^(-lambda+n lambda (e^(-1/n)-1))+e^(-2 lambda). $
  当 $n->oo$ 时 $"MSE"(hat(p)_1)->0$, 于是 $hat(p)_1$ 是一致估计量.

+ 有
    $ EE(hat(p)_2)=EE(1_(X_i=0))=e^(-lambda), $
  于是 $hat(p)_2$ 是无偏估计量, 自然也是渐进无偏估计量. 而
    $ "MSE"(hat(p)_2)
      &="Var"(hat(p)_2)\
      &=1/n "Var"(1_(X_i=0))\
      &=1/n e^(-lambda) (1-e^(-lambda)). $
  于是 $hat(p)_2$ 是一致估计量.