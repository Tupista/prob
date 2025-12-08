#show heading: set block(below: 1.2em)

== Question 1

+ $P(X>=a)<=EE(X)\/a=1\/a.$

+ 不等式在 $a in (0,1)$ 时显然成立. 设 $a > 1.$

  $P(X>=a)=P(X-EE(x)>=(a-1)sigma(X))<=1\/(a-1)^2.$

+ 考虑计算 $EE(e^(t X)).$ 下面的计算要求 $t<1.$

    $ EE(e^(t X))&=integral_0^(+oo) e^(-x) dot e^(t x)dif x \
                 &=integral_0^(+oo) e^(-(1-t)x) dif x \ 
                 &=lr(1/(t-1)e^(-(1-t)x)|)_0^(+oo)=1/(1-t) \
                 &= sum_(k=0)^oo t^k. $
  
  于是 $EE(X^k)=k!, P(X>=a)=P(X^k>=a^k)<=EE(X^k)/a^k=k!\/a^k.$

+ 要求 $min_t 1/(1-t) e^(-t a).$ 记该函数为 $f(t).$

    $ f'(t)&=1/(1-t)^2 e^(-t a)+1/(1-t)dot (-a) e^(-t a) \ 
           &=1/(1-t) e^(-t a) dot (1/(1-t)-a). $

  于是取 $t=1-a^(-1)$ 即得 $P(X>=a)<=a e^(1-a).$

+ 所求为 

    $ P(X>=a)&=integral_a^(+oo) e^(-x)dif x=e^(-a). $

+ 令 $K~pi(t a), f(k)=EE(X^k)\/a^k.$
    $ EE(f(K))&=sum_(k=0)^(+oo) (t a)^k/k! e^(-t a) dot k!/a^k \ 
              &=e^(-t a)sum_(k=0)^(+oo) t^k \ 
              &=e^(-t a)/(1-t). $
  取 $t=1-a^(-1)$ 即有 $EE(f(K))=lambda_("Chernoff").$ 于是矩函数给出的界较 
  Chernoff 更紧.

== Question 2

+ 对于 $epsilon<1\/2,$ 有 #h(1fr)
    $ lim_(n->oo) P(abs(X_n-X)<epsilon)=lim_(n->oo) 1/n=0, $
  于是 ${X_n}$ 依概率收敛到 0. 相对的
    $ P(union.big_(m=n)^oo) P(abs(X_m-X)<epsilon)=sum_(m=n)^oo 1/m $ 
  求和发散, 于是 ${X_n}$ 不几乎必然收敛到 0.

+ 利用 Chernoff-Hoeffding 不等式: 
    $ P(abs(Y_m-p)>epsilon)
      &=P(abs(sum_(i=1)^m X_i-m p)>m epsilon) \ 
      &<= 2 dot exp(-(2m^2 epsilon^2)/m) \ 
      &=2 exp(-2m epsilon^2). $
  于是 
    $ P(union.big_(m=n)^oo abs(Y_m-p)>epsilon)
      &<=2 sum_(m=n)^(+oo) exp(-2m epsilon^2) \ 
      &=2 exp(-2n epsilon^2) dot 1/(1-exp(-2 epsilon^2))-->0. $

== Question 3

观察到若 $A$ 输出"合数", 则输入为合数; 若 $B$ 输出"质数", 则输入为质数.

考虑如下算法: 循环执行 $A B$, 直至某一程序产生如上输出. 下面证明这一算法运行时间 \
期望为 $O(T).$ 

由对称性无妨设输入为质数, 则 $C$ 在 $B$ 输出"质数"时停止. 于是 
  $ EE(T(C))<=2 EE(G(1/2)) dot O(T)=O(T). $

== Question 4

+ 有 #h(1fr)
    $ M_X (t)
      &=(M_(B(1,p)) (t))^n=(p e^t+1-p)^n \ 
      &=exp(n dot ln(p e^t+1-p)) \ 
      &<=exp(n dot (p e^t-p))\ 
      &=exp(EE(X) dot (e^t-1)). $

+ 对任意 $epsilon>0,$
    $ P(X>=(1+epsilon)EE(X))
      &<=M_X (t) dot exp(-t dot (1+epsilon)EE(X)) \ 
      &<=exp(EE(X) dot (e^t-1-t(1+epsilon))). $
  对 $f(t):=e^t-1-t(1+epsilon)$ 求导:
    $ f'(t)&=e^t-(1+epsilon), $
  取 $t=ln(1+epsilon)$ 即有
    $ P(X>=(1+epsilon)EE(X))
      &<=exp(EE(X) dot (epsilon-ln(1+epsilon) (1+epsilon))) \ 
      &=(e^epsilon/(1+epsilon)^(1+epsilon))^EE(X). $

  对任意 $0<epsilon<1,$
    $ P(X<=(1-epsilon)EE(X))
      &<=P(e^(-t X)>=e^(-t(1-epsilon)EE(X))) \
      &<=M_X (-t) dot exp(t(1-epsilon)EE(X)) \
      &=exp(EE(X) dot (e^(-t)-1+t(1-epsilon))).  $
  对 $g(t):=e^(-t)-1+t(1-epsilon)$ 求导:
    $ g'(t)&=-e^(-t)+1-epsilon, $
  取 $t=-ln(1-epsilon)$ 即有
    $ P(X<=(1-epsilon)EE(X))
      &<=exp(EE(X) dot (1-epsilon-1-ln(1-epsilon)(1-epsilon))) \
      &=exp(EE(X) dot (-epsilon-ln(1-epsilon)(1-epsilon))) \ 
      &=(e^(-epsilon)/(1-epsilon)^(1-epsilon))^(EE(X)). $

+ 由 Union Bound 只需证明 $X~B(n,1\/n)$ 时 $P(X>=c_1 ln n\/ln ln n)<=1\/n^2.$
    $ ln P(X>=c_1 ln n\/ln ln n)
      &<=ln (e^((c_1 ln n)/(ln ln n)-1)/((c_1 ln n)/(ln ln n))^((c_1 ln n)/(ln ln n))) \ 
      &=(c_1 ln n)/(ln ln n)-1-((c_1 ln n)/(ln ln n))(ln c_1+ln ln n-ln ln ln n) \
      &<=[(c_1 ln n)/(ln ln n)-(c_1 ln c_1 ln n)/(ln ln n)]-c_1 ln n+(c_1 ln n ln ln ln n)/(ln ln n) \ 
      &=ln n dot (underbracket((c_1(1-ln c_1))/(ln ln n), "A")-c_1+underbracket((c_1 ln ln ln n)/(ln ln n), "B")) $
  其中 $A,B attach(-->,t:n->oo) 0.$ 于是当 $n$ 充分大时 
  $ln P(X>=c_1 ln n\/ ln ln n)<=-c_1 ln n,$ 取 $c_1=3$ 即证.

+ 有
    $ EE(Y)
      &<=c_1 ln n\/ln ln n+n dot P(Y>=c_1 ln n\/ln ln n) \ 
      &<=c_1 ln n\/ ln ln n+1 \ 
      &<=(c_1+1)ln n\/ ln ln n. $

== Question 5

+ 考虑由 ${y_i},{-y_i},{bold(0)}$ 组成的 ${x_i},$ 则不等式中的向量是 ${x_i-x_j}$
  的子集, 结论由题设成立.

+ 假定 (1) 中全部命题成立, 则有
    $ chevron 1/sqrt(k) A y_i, 1/sqrt(k) A y_j chevron.r
      &=1/2[norm(1/sqrt(k) A(y_i+y_j))^2-norm(1/sqrt(k)A y_i)^2-norm(1/sqrt(k)A y_j)^2] \ 
      &<=1/2[(1+epsilon/4)norm(y_i+y_j)^2-(1-epsilon/4)norm(y_i)^2-(1-epsilon/4)norm(y_j)^2] \
      &=(1+epsilon/4) chevron y_i, y_j chevron.r+epsilon/4 (norm(y_i)^2+norm(y_j)^2),  $
  即 
    $ abs(chevron 1/sqrt(k) A y_i"," 1/sqrt(k) A y_j chevron.r-chevron y_i"," y_j chevron.r)<=epsilon/2+epsilon/4<epsilon. $

+ 将 $x_i$ 正则化为 $hat(x_i)=x_i\/norm(x_i)$ 即可. $x_i=bold(0)$ 时显然.

+ 考虑 $RR^n$ 的单位正交基 $e_1,dots,e_n,$ 构造如上随机矩阵 $B in "M"_(k times n),$
  $k=O(log n\/epsilon^2), epsilon$ 取 $0.1$. 利用上一问结论有 
    $ abs(chevron 1/sqrt(k) B e_i"," 1/sqrt(k) B e_j chevron.r-chevron e_i"," e_j chevron.r)<=epsilon. $
  构造矩阵 $A:=1/k B^top B,$ $A_(i j)-I_(i j)$ 即满足如上不等式, 于是 $A$ 符合要求.

== Question 6

+ 显然 $Y_i$ 的密度函数为 $g(x)=2/(pi(x^2+1)), x>0.$

+ 考虑对 $Y_i$ 进行截断. 令 $Y_i^((t)):=min(Y_i,t), 
  Z_i:=Y_i-Y_i^((t))=max(Y_i-t,0),$ 则 
    $ P(sum Y_i>c_1 n^2)<=P(sum Z_i>0)+P(sum Y_i^((t))>c_1 n^2). $
  
  - 先证 $P(sum Z_i>0)<1\/6.$ 由 Union Bound 只需要保证 $P(Z_i>0)<1\/6n.$ 已知
      $ P(Z_i>0)=P(Y_i>t)=2/pi (pi/2-arctan t)=1-2/pi arctan t, $
    洛必达法则告诉我们 $t->+oo$ 时 $pi\/2-arctan t$ 和 $1\/t$ 同阶, 于是取 
    $t=O(n)$ 即可满足要求.
  
  - 接下来证 $P(sum Y_i^((t))>c_1 n^2)<1\/6.$ 有
      $ EE(Y_i)
        &=integral_0^t x dot 2/(pi(x^2+1))dif x+(1-2/pi arctan t) dot t \
        &=2/pi integral_0^t x/(x^2+1)dif x+(1-2/pi arctan t) dot t \
        &=1/pi ln(t^2+1)+(1-2/pi arctan t) dot t. $
    取 $t=O(n)$ 时由 Markov 不等式 
      $ P(sum Y_i^((t))>c_1 n^2)
        &<=(1/pi ln(t^2+1)-(1-2/pi arctan t)dot t)/(c_1 n) \ 
        &<=(O(ln n)-O(1/n)dot O(n))/(c_1 n)=O((ln n)/n), $
    选取足够大的 $c_1$ 即可保证概率不超过 $1\/6.$ 明所欲证.
  
+ 利用和上文类似的截断方式可知 
    $ EE(sum Y_i)=n dot EE(Y_i)=O(n ln t), $
  利用 Chernoff-Hoeffding 不等式即有
    $ P(sum Y_i^((t))<=c_2 n)
      &=P(sum Y_i^((t))<=EE(Y_i)-O(n ln t)) \ 
      &<=exp(-O((n ln^2 t)/t^2)). $
  令 $t=O(sqrt(n))$ 并利用 $P(sum Y_i<c_2 n)<P(sum Y_i^((t))<c_2 n)$ 即证.