== Question 1
#linebreak()
+ 构造 $P(X=a)=a^(-1),P(X=0)=1-a^(-1).$

+ 构造 $P(X=c)=P(X=-c)=1/(2c^2), P(X=0)=1-1/c^2.$

== Question 2
#linebreak()

+ $E((X-c)^2)=E(X^2)-2c E(x)+c^2=(c-E(x))^2+"Var"(x)>="Var"(X).$

+ 在上一问中代入 $c = (a+b)/2$ 即有 $"Var"(X)<=E((X-(a+b)/2)^2)<=((b-a)/2)^2.$

== Question 3
#linebreak()

+ $P(Y=k)=p(1-p)(p^(k-2)+(1-p)^(k-2)), thick k=2,3,dots$

  其中 $P(Y=k)>=0,sum_k P(Y=k)=p(1-p)(1/(1-p)+1/p)=1.$

+ $ E(Y)&=sum_(k=2)^oo k p(1-p)(p^(k-2)+(1-p)^(k-2))\ &=sum_(k=2)^oo k (1-p)p^(k-1) + sum_(k=2)^oo k p (1-p)^(k-1) \ &=(1-p)(sum_(k=2)^oo p^k)'-p(sum_(k=2)^oo (1-p)^k)' \ &=(1-p)(1/(1-p)-p)'-p(1/p-(1-p))' \ &=(1-p)(1/(1-p)^2-1)-p(-1/p^2+1) \ &=1/p+1/(1-p)-1. $

+ 利用 $"Var"(Y)=E(Y^2)-E(Y)^2,$ 计算 $E(Y^2)$ 即可. $ E(Y^2)&=sum_(k=2)^oo k^2p(1-p)(p^(k-2)+(1-p)^(k-2)) \ &= sum_(k=2)^oo k^2(1-p)p^(k-1)+sum_(k=2)^oo k^2p(1-p)^(k-1). $ 其中 $ sum_(k=2)^oo k^2(1-p)p^(k-1)&=(1-p)[sum_(k=2)^oo k(k+1)p^(k-1)-sum_(k=2)^oo k p^(k-1)] \ &=(1-p)(sum_(k=3)^oo p^k)''-(1-p)(sum_(k=2)^oo p^k)' \ &= (1-p)[(1/(1-p)-p-p^2)''-1/(1-p)^2+1] \ &=(1-p)[2/(1-p)^3-2-1/(1-p)^2+1] \ &=(1+p-(1-p)^3)/(1-p)^2. $ 相同的计算给出 $ sum_(k=2)^oo k^2p(1-p)^(k-1)=(1+(1-p)-p^3)/p^2. $ 于是 $ "Var"(Y)=[(1+p+(1-p)^3)/(1-p)^2+(1+(1-p)+p^3)/p^2]-E(Y)^2. $

== Question 4
#linebreak()

+ $ E(e^(X t))=sum_(k=0)^n binom(n,k)p^k (1-p)^(n-k)e^(k t)=sum_(k=0)^oo binom(n,k)(p e^t)^k (1-p)^(n-k)=(p e^t+1-p)^n. $

+ $ sum_(k=0)^n binom(n,k)p^k (1-p)^(n-k) e^(k t)&=sum_(k=0)^n binom(n,k)p^k (1-p)^(n-k)sum_(i=0)^oo k^i t^i/i! \ &= sum_(i=0)^oo t^i/i!sum_(k=0)^n binom(n,k)p^k (1-p)^(n-k)k^i \ &=sum_(i=0)^oo t^i/i! E(X^i). $

+ 令 $f(t)=E(e^(X t))=sum_(i=0)^oo t^i/i! E(X^i),$ 则 $ f'(t)=sum_(i=1)^oo t^(i-1)/(i-1)! E(X^i)=sum_(i=0)^oo t^i/i! E(X^(i+1)), \ E(X)=f'(0)=lr(n p e^t (p e^t+1-p)^(n-1)|,size:#125%)_(t=0)=n p. $ 同理可得 $ E(X^2)=f''(0)=lr(n(n-1)e^t p^2(p e^t+1-p)^(n-2)+n p e^t (p e^t+1-p)^(n-1)|,size:#125%)_(t=0)=n(n-1)p^2+n p. $

+ $ E(e^(Y t))=sum_(k=0)^oo lambda^k/k! e^(-lambda) dot e^(k t)=sum_(k=0)^oo (lambda e^t)^k/k! e^(-lambda)=e^(lambda (e^t-1)). $ 注意到第二问中证明的结论与分布列无关, 于是同理有 $ E(e^(Y t))=sum_(i=0)^oo t^i/i! E(Y^i). $ 令 $g(t)=e^(lambda (e^t-1)).$ 相似的计算给出 $ E(Y)=g'(0)=lr(lambda e^t e^(lambda (e^t-1))|,size:#125%)_(t=0)=lambda, \ E(Y^2)=g''(0)=lr(lambda e^t e^(lambda(e^t-1))+lambda^2e^(2t)e^(lambda (e^t-1))|,size:#125%)_(t=0)=lambda+lambda^2. $

== Question 5
#linebreak()

+ 显然 $X_i~B(n,1/n),$ 于是 $E(X_i)=n dot 1/n=1.$

+ $ P(X_i=k)&=(binom(n,k)dot (n-1)^(n-k))/n^n \ &=1/k! dot ((n(n-1)dots(n-k+1)) dot (n-1)^(n-k))/n^n <=1/k!. $

+ $ P(Y>=4 log n)&<=n P(X_i>=4 log n) \ &<=n sum_(k=4log n)^n P(X_i=k) \ &<=n sum_(k=4log n)^n 1/k! \ &<=n^2/2^(4 log n)=1/n^2. $

+ $E(Y)<=4 log n+n dot P(Y>=4 log n)=4log n+1<=5 log n.$

== Question 6
#linebreak()

+ $ E((X-E(X)+b)^2)&=E(X^2+E(X)^2+b^2-2X E(X)-2b E(X)+2b X) \ &=E(X^2)-E(X)^2+b^2=(sigma(X))+b^2. $

+ 代入 $b=sigma(X)$ 即有 $ (sigma(X)+t)^2P(X>=E(X)+t)<=E((X-E(X)+sigma(X))^2)=2(sigma(X))^2, $ 即 $ P(X>=E(X)+t)<= (2(sigma(X))^2)/((sigma(X)+t)^2)<1/2. $

+ 由上一问结论有 $m-E(X)<=sigma(X).$ 上一问同理可得对于任意 $t>sigma(X),$\ $P(X<=E(X)-t)<1/2,$ 于是有 $E(X)-m<=sigma(X).$ 联立即有 $abs(m-E(X))<=sigma(X).$