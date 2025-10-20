== Question 1
#linebreak()

+ #h(1fr) $ E(X)&=sum_(x=0)^(+oo) x dot P(X=x) \ &=sum_(x=1)^(+oo)x dot (P(X>x-1)-P(X>x)) \ &=P(X>0)+sum_(x=1)^(+oo) P(X>x) dot ((x+1)-x) \ &=sum_(x=0)^(+oo) P(X>x). $

+ $ integral_0^(+oo) P(X>x) dif x &= integral_0^(+oo) [integral_x^(+oo)f (t) dif t] dif x \ &=integral_0^(+oo)[integral_0^t f(t)dif x] dif t \ &=integral_0^(+oo) t f(t) dif t=E(X). $

== Question 2
#linebreak()

+ 

  - $P(Y<=t)=P(F^(-1) (Z)<=t)=P(Z<=F(t))=F(t).$ 即 $Y$ 和 $X$ 的分布函数相同.

  - $P(W<=t)=P(F(X)<=t)=P(X<=F^(-1) (t))=F(F^(-1) (t))=t.$

+ $X~"exp"(lambda)$ 时 $F(x)=1-e^(-lambda x),$ 所求即为 $f(t)=F^(-1) (t)=-(ln (1-t))/lambda.$ 

== Question 3
#linebreak()

+ 显然 $E(g(X))=sum_(i in [n]) (r_i-l_i).$ #h(1fr)

+ 反证, 若不存在这样的 $x,$ 即 $forall x in [0,1], g(x)<sum_(i in [n]) (r_i-l_i)=E(g(X)),$ 则 $ E(g(X))<=max_(x in [0,1]) g(x)<E(g(X)), $ 矛盾!

== Question 4
#linebreak()

+ 只需计算 $mu=0$ 的情形, 再加上一个平移. #h(1fr) $ integral_(-oo)^oo f(x)dif x &= 2 integral_0^(+oo) c e^(-x/b) dif x=2 b c integral_0^(+oo) e^(-x)dif x=2 b c=1, $ 于是 $c=(2b)^(-1).$ 而当 $x>0$ 时计算 $ integral_x^(+oo) f(t)dif t=1/(2b)integral_x^(+oo) e^(-t/b)dif t=1/2 integral_(x/b)^(+oo)e^(-t)dif t=1/2 e^(-x/b). $ 于是 $ F(x)=cases(1/2 e^((mu-x)/b) 
"," quad &x<=mu",", ,1-1/2e^((x-mu)/b)","quad &x>mu".") $

+ 由对称性 $E(X)=mu.$ 计算方差时可按 $mu=0$ 计算.

$ E(X^2)&=integral_(-oo)^(+oo) x^2 f(x)dif x \ &=1/b integral_0^(+oo) x^2 e^(-x/b)dif x \ &=b^2 integral_0^(+oo) x^2 e^(-x)dif x \ &=b^2[lr(-x^2e^(-x)|,size:#140%)_0^(+oo)+integral_0^(+oo) 2x e^(-x)dif x] \ &=2b^2 integral_0^(+oo) x e^(-x)dif x \ &=2b^2 [lr(-x e^(-x)|,size:#140%)_0^(+oo)+integral_0^(+oo) e^(-x)dif x]=2b^2. $ 于是 $"Var"(X)=E(X^2)-E(X)^2=2b^2.$

== Question 5
#linebreak()

+ #h(1fr) $ integral_x^(+oo) t/x e^(-t^2/2) dif t=1/x integral_x^(+oo)t e^(-t^2/2) dif t=-1/x integral_x^(+oo)dif e^(-t^2/2)=1/x dot e^(-x^2/2). $

+ $ g(x)&=integral_x^(+oo) e^(-t^2/2)dif t-x/(x^2+1)e^(-x^2/2), \ g'(x)&=-e^(-x^2/2)-(x^2+1-2x^2)/(x^2+1)^2 e^(-x^2/2)+x^2/(x^2+1)e^(-x^2/2) \ &=e^(-x^2/2)(-1+(x^2-1)/(x^2+1)^2+x^2/(x^2+1))>0, $ 而 $ g(0)=integral_0^(+oo)e^(-x^2/2)dif x-0>0. $ 明所欲证.

+ 分别应用第 1,2 小问的结论: $ P(X>=x)&=integral_x^(+oo) 1/sqrt(2pi) e^(-x^2/2) dif x<=1/sqrt(2pi) integral_x^(+oo) t/x e^(-t^2/2)dif t=1/(x sqrt(2pi)) e^(-x^2/2), \ P(X>=x)&=integral_x^(+oo) 1/sqrt(2pi) e^(-x^2/2) dif x>=1/sqrt(2pi) dot x/(x^2+1) e^(-x^2/2). $

+ 令 $X:=(Y-mu)/sigma, $ 有 $X~N(0,1).$ 于是 $ P(abs(Y-mu)<=k sigma)=P(abs(X)<k)=1-2P(X>=k), $ 代入第 3 小问结论立得.

== Question 6
#linebreak()

+ #h(1fr) $ E(e^(t X))&=integral_0^(+oo) lambda^alpha/Gamma(alpha) x^(alpha-1) e^(-lambda x) e^(t x) dif x \ &=(lambda/(lambda-t))^(alpha)integral_0^(+oo) ((lambda-t)x)^(alpha-1)/Gamma(alpha) e^(-(lambda-t)x)dif (lambda-t)x \ &=(lambda/(lambda-t))^alpha. $ 这要求 $t<lambda;$ 当 $t>=lambda$ 时积分发散.

+ $ E(e^(t Y^2))&=integral_0^(+oo) 1/sqrt(2pi) e^(-x^2/2) e^(t x^2) dif x \ &=1/sqrt(2pi)integral_0^(+oo)e^((t-1/2)x^2)dif x \ &=1/sqrt(2pi) dot 1/sqrt(1/2-t) integral_0^(+oo)e^(-x^2)dif x \ &=1/sqrt(1-2t). $ 这要求 $t<1/2;$ 当 $t>=1/2$ 时积分发散.

+ $ F(x)=P(Z<=x)=P(abs(Y)<=sqrt(x))=2 integral_0^sqrt(x) 1/sqrt(2pi) e^(-t^2/2) dif t, $ 于是 $ forall x>=0, quad f(x)=F'(x)=sqrt(2/pi) dot e^(-x/2) dot 1/(2sqrt(x))=1/sqrt(2pi x) dot e^(-x/2). $ 实际上 $Z~Gamma(1/2,1/2)$ 即 $Z~chi^2(1).$