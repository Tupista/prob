#show heading: set block(below: 1.2em)

== $section$ Tail Inequalities

*Recall* $quad$ Markov and Chebyshev's inequality.

*Definition* $quad$ Given r.v. $X$, define its _moment generating function_ 
(矩生成函数) as
    $ M_X (t):=EE(e^(t X)). $

*Consequence* 
    $ EE(X^k)=lr((dif^k M_X (t)) / (dif t^k)|)_(t=0) $

*Proposition (Chernoff)*
    $ P(X>=k)<=min_t M_X (t) dot e^(-t k). $

*Lemma (Hoeffding)* $quad$ Given r.v. $X in [a,b],$ then 
    $ EE(e^(X-EE(X)))<=e^((t^2(b-a)^2)/8). $

*Proposition (Chernoff-Hoeffding)* $quad$ Given i.i.d. $X_i in [a,b], 
X=sum_(i=1)^n X_i,$ then 
    $ P(X>=EE(X)+k)<=e^(-(2k^2)/(n(b-a)^2)), \ 
      P(X<=EE(X)-k)<=e^(-(2k^2)/(n(b-a)^2)). $

== $section$ Law of Large Numbers

Some random variables satisfy the following: $forall epsilon>0,$
    $ lim_(n->oo) P(abs(1/n sum_(i=1)^n X_i - 1/n sum_(i=1)^n EE(X_i))
                   <epsilon)=1. $

*Proposition* $quad$ Bernoulli distribution satisfies the law of large numbers.

*Proposition (Markov)* $quad$ If $display(1/n^2 sum_(i=1)^n "Var"(X_i)->0),$
then ${X_n}$ satisfies the law of large numbers.

*Proposition (Khinchin)* $quad$ For i.i.d. ${X_n},$ if $EE(X_i)$ exists, then 
${X_n}$ satisfies the law of large numbers.

=== Definitions

- _Convergence in Probability_ (依概率收敛): ${X_n}$ converges to $X$ in 
  probability iff 
      $ forall epsilon>0, lim_(n->oo) P(abs(X_n-X)<epsilon)=1. $

- _Convergence in Distribution_ (依分布收敛): $X_n$ converges to $X$ in
  distribution iff $F_n (x)$ converges to $F(x)$ at all continuous points of 
  $F(x).$

*Proposition* $quad$ Convergence in Probability $==>$ Convergence in 
Distribution.

=== Applications

- _War-of-Tug_. Given $S_1,dots,S_m subset [n]$ and $chi: 
  [n]->{plus.minus 1},$ define $"disc"_chi (S):=abs(sum_(s in S) chi(s)).$ 
  Find a $chi$ that minimizes $max{"disc"_chi (S_1),dots,"disc"_chi (S_m)}.$

  We can show that a random $chi$ has $50%$ probability of achieving 
  $sqrt(n log m).$ Since $EE["disc"_chi (S)]=0,$ from Chernoff-Hoeffding we have
    $ P("disc"_chi (S)>=k)<=2 dot e^(-k^2/(2n)). $
  Then using Union Bound we have 
    $P(max_i "disc"_chi (S_i)>=k)<=2m dot e^(-k^2/(2n)).$
  Set $k=sqrt(n log m).$

- _Data Compression._ Given $x_1,dots,x_n in RR^d,$ construct $f:RR^d->RR^k$ 
  that preserves the distance between vectors, i.e.
    $ (1-epsilon)abs(x_i-x_j)_2^2 < abs(f(x_i)-f(x_j))-2^2 < (1+epsilon)abs(x_i-x_j)_2^2. $
  The conslusion is $f(bold(x))=1/sqrt(k) bold(A x)$ where 
  $A in "M"_(k times d) (RR),a_(i j)~N(0,1).$ The key is for 
  $bold(z):=1/norm(bold(x)) bold(A x),$
    $ P(abs(norm(bold(z))-k)<=epsilon k)<=2e^(-(k epsilon^2)/8). $