== Question 1
#linebreak()

+ 将问题转化为求 $display(sum_(k=1)^n p_i),$ 其中 $p_i$ 表示所有事件中恰好有 $i$ 个事件发生的概率, 可以写成 $ p_k=sum_(1<=i_1<dots<i_k<=n) P(A_i_1 dots A_i_k) $
  于是只需要证明给出的公式中 $P(A_i_1 dots A_i_k)$ 恰好被计算了一次. 实际上有 $ binom(k,1)-binom(k,2)+dots+(-1)^(k-1) binom(k,k)=-(1+t)^k+1, quad t:=-1 $ 于是左式为 $1,$ 明所欲证. #h(1fr) $square$

+ 采用第一归纳法. $n=1,2$ 的情形不等式显然成立.

  若 $n=k$ 时结论成立, 则 $n=k+1$ 时有 $ P(union.big_(i=1)^(k+1) A_i)&=P((union.big_(i=1)^k A_i) union A_(k+1)) \ &<= P(union.big_(i=1)^k A_i)+P(A_(k+1)) \ &<= sum_(i=1)^(k+1) P(A_i). $ #h(1fr) $square$

+ 采用第一归纳法. $n=1,2$ 的情形根据定义成立.

  若 $n=k$ 时结论成立, 则 $n=k+1$ 时有 $ P(A_1 dots A_(k+1))&=P(A_1 dots A_k) P(A_(k+1) bar A_1 dots A_k) \ &= P(A_1)P(A_2 bar A_1)dots P(A_(k+1) bar A_1 dots A_k). $ #h(1fr) $square$

== Question 2
#linebreak()

+ 构造如下反例: 现有随机变量 $X in [0,2pi],$ $A:X in [0,3/2pi], B:X in [0,pi] union [3/2 pi,2pi],$ \ $C:X in [0,pi].$ 此时 $A,B$ 在条件 $C$ 下独立, 在条件 $overline(C)$ 下互斥.

+ 构造如下反例: $X$ 构造同上, 令 $A:X in [0,pi], B:X in [1/2 pi,3/2pi], C:X in [1/2pi,pi] union [3/2pi, 2pi].$ 此时 $A,B$ 独立但在条件 $C$ 下有 $P(A bar C)=P(B bar C)=P(A B bar C)=1/2.$

+ 该命题是正确的, 证明如下: $ P(A overline(B))&=P(A)-P(A B) \ &= P(A) (1-P(B)) = P(A)P(overline(B)). $ #h(1fr) $square$
#pagebreak()
== Question 3
#linebreak()

已知  $ ln P_(n,m)&=ln(1-1/m)+dots+ln(1-(n-1)/m) \ &=(-1/m-1/(2m^2)+O(1/m^3))+dots+(-(n-1)/m-(n-1)^2/(2m^2)+O(n^2/m^3)) \ &=-(n(n-1))/(2m)-((n-1)n(2n-1))/(12m^2)+O(n^3/m^3) \ &=-(n(n-1))/(2m)+O(n^3/m^2). $ 结合 $e^x=1+O(x),$ 明所欲证. #h(1fr) $square$

== Question 4
#linebreak()

+ 对于给定的 $k,$ 任意玩家有 $k/n$ 的概率在 $k$ 人队伍中, $(n-k)/n$ 的概率在另一队中. 于是所求为 $ p_k=1/(n-1) (k/n+(n-k)/n)=1/(n-1). $

+ 令事件 A 表示"第一个玩家成为队长", 事件 B 表示"第一个玩家所在队伍有 $k$ 个人", 则 $ p(A B)&=p_k dot 1/k=1/(k(n-1)), \ p(A)&=1/(n-1)sum_(k=1)^(n-1) (k/n dot 1/k + (n-k)/n dot 1/(n-k))=2/n. $ 于是所求为 $ P(B bar A)=P(A B)/P(A)=n/(2k(n-1)). $

== Question 5
#linebreak()

设事件 A 为"两次检验至少有一次为阳性", 事件 B 为"该受检者患病". 则 $ P(B bar A)=P(A B)/(P(A B)+P(A overline(B))) $ 其中 $ P(A B)&=P(B) P(A bar B) \ &=p (1-(1-p_1)(1-p_2)) \ &=p (p_1+p_2-p_1p_2), \ P(A overline(B))&=P(overline(B))P(A bar overline(B)) \ &=(1-p)(1-(1-q_1)(1-q_2)) \ &=(1-p)(q_1+q_2-q_1q_2). $ 于是所求即为 $ P(B bar A)=(p(p_1+p_2-p_1p_2))/(p(p_1+p_2-p_1p_2)+(1-p)(q_1+q_2-q_1q_2)). $

== Question 6
#linebreak()

+ 各场比赛之间的胜负情况相互独立, 于是所求即为 $display(product_(v in V) 1/2 = 1/2^k).$

+ 由上一问可知 $display(P(overline(A_(V,v)))=1-1/2^k),$ 所求即为 $ P(B_V)&=1-P(overline(B_V)) \ &=1-product_(v in.not V) P(overline(A_(V,v))) \ &=1-(1-1/2^k)^(n-k). $

+ 直接写出 $ P(C)&=1-P(overline(C))=1-P(union.big_(abs(V)=k) overline(B_V)) \ &>=1-sum_(abs(V)=k)P(overline(B_V)) \ &=1-binom(n,k)(1-1/2^k)^(n-k). $ 明所欲证. #h(1fr) $square$

+ 沿用上一问的结论, 我们的目标是证明 $n~O(k^2 dot 2^k)$ 时 $P(C)>0.$ 令 $n:=alpha dot k^2 dot 2^k,$ 有 $ A:=ln(binom(n,k)(1-1/2^k)^(n-k))&=ln binom(n,k)+(n-k) ln (1-1/2^k) \ &<=k ln n+(n-k)(-1/2^k) \ &=k (2 ln k+k ln 2+ln alpha)+(alpha dot k^2 dot 2^k)(-1/2^k)+k/2^k \ &=2k ln k+k^2 ln 2+k ln alpha-alpha dot k^2+k/2^k \ &-> -oo quad (alpha>ln 2, k->+oo) $ 于是对于充分大的 $k,$ 总能取 $alpha=10086$ 总使得 $ P(C)&>=1-binom(n,k)(1-1/2^k)^(n-k) \ &=1-exp(A)>=1-exp(1/2) >0. $ 明所欲证. #h(1fr) $square$