== Question 1
#linebreak()

+ $ P(X+Y=k) &= sum_(l=r)^(k-1) P(Y=l) dot P(X=k-l) \ &=sum_(l=r)^(k-1) binom(l-1, r-1) p^r (1-p)^(l-r) dot (1-p)^(k-l-1) p \ &=p^(r+1) (1-p)^(k-1-r) sum_(l=r)^(k-1) binom(l-1,r-1) \ &=binom(k-1,r) p^(r+1) (1-p)^(k-1-r). $

  这里利用了 $ binom(n,m)&=binom(n-1,m)+binom(n-1,m-1) \ &=binom(n-2,m)+binom(n-2,m-1)+binom(n-1,m-1) \ &=dots \ &=sum_(k=m-1)^(n-1) binom(k,m-1). $

+ $"NB"(1,p)$ 等价于 $G(p),$ 归纳即证.

== Question 2
#linebreak()

+ $ E(X Y bar A) &= sum_i sum_j x_i y_j P(X=x_i and Y=y_j bar A) \ &= sum_i sum_j x_i y_j P(X=x_i bar A) P(Y=y_j bar A) \ &=(sum_i x_i P(X=x_i bar A))(sum_j y_j P(Y=y_j bar A)) \ &=E(X bar A)dot E(Y bar A). $

+ $X_i,X_j$ 在 $E_(i,j)$ 的条件下条件独立, 两者均服从 $X-1 ~ B(n-2,1\/2).$ 于是 $ E(X_i X_j bar E_(i,j))=E(X_i bar E_(i,j))dot E(X_j bar E_(i,j))=n^2/4. $

+ 类似的有 $ E(X_i X_j bar not E_(i,j))=(n-2)^2/4. $ 由重期望公式有 $ E(X_i X_j)&=1/2 E(X_i X_j bar E_(i,j)) + 1/2 E(X_i X_j bar not E_(i,j)) \ &=1/2 dot n^2/4 + 1/2 dot (n-2)^2/4=(n-1)^2/4 + 1/4. $

== Question 3
#linebreak()

+ 由几何分布的无记忆性, 记事件 $A$ 表示第一次试验未成功, 则 $ E(X^2 bar A)=E((X+1)^2). $ 利用重期望公式即证. 三次方的情形是完全相同的.

  计算 $E(X^2):$ $ E(X^2)=&p+(1-p)(E(X^2)+2 dot 1/p+1) \ ==>&E(X^2)=1+((p+2)(1-p))/p^2=(2-p)/p^2. $

  计算 $E(X^3):$ $ E(X^3)=&p+(1-p)(E(X^3)+(3(2-p))/p^2+3/p+1) \ ==>& E(X^3)=(p^2-6p+6)/p^3. $

+ 令 $overline(X)~G(1-p),$ 类似于上一问列出方程: $ E(Y)&=p E(overline(X)+1)+(1-p)E(X+1), \ E(Y^2)&=p E((overline(X)+1)^2)+(1-p)E((X+1)^2). $

  计算 $E(Y):$ $ E(Y)=p dot (1/(1-p)+1)+(1-p) dot (1/p+1)=1/p+1/(1-p)-1. $

  计算  $E(Y^2):$ $ E(Y^2)&=p ((2-(1-p))/((1-p)^2)+2/(1-p)+1)+(1-p)((2-p)/p^2+2/p+1) \ &= (2+(1-p)-(1-p)^3)/(1-p)^2+(2+p-p^3)/p^2. $ 于是 $"Var"(Y)=E(Y^2)-E(Y)^2.$

== Question 4
#linebreak()

+ 只要将所有的 $Y_i$ 构成的元组视作同一个随机"变量" $Z,$ 这与一般的重期望公式没有区别.

+ 令 $E_(i,j)$ 表示 $i,j$ 是否被计入 $Y.$ 计算 $E(Y bar {X_(i,j)})$: $ E(Y bar {X_(i,j)})=sum_(i<j) E(E_(i,j) bar {X_(i,j)})= 1/2 sum_(i<j) X_(i,j). $
  对于 $i<j<k,$ 显然 $E_(i,j)$ 和 $E_(j,k)$ 独立. 计算 $E(Y^2 bar {X_(i,j)})$: $ E(Y^2 bar {X_(i,j)})&=sum_(i<j) E(E_(i,j)^2 bar {X_(i,j)}) + sum_(i<j,\ k<l,\ {i,j}!={k,l}) E(E_(i,j)E_(k,l) bar {X_(i,j)}) \ &= 1/2 A + 1/4 (A^2-A) = 1/4 (A^2+A), $ 其中  $A:= sum_(i<j) X_(i,j).$

+ 计算 $E(Y):$ $ E(Y)=1/2 E(A)=(n(n-1))/8. $ 计算 $"Var"(Y):$ $ "Var"(Y)&=E(Y^2)-E(Y)^2 \ &=1/4 E(A^2)+1/4 E(A)-E(Y)^2 \ &= 1/4 E(A)^2+1/4"Var"(A)+1/4 E(A)-1/4 E(A)^2 \ &=(n(n-1))/16+1/4 dot (n(n-1))/2 dot 1/4 \ &= (3n(n-1))/32. $

== Question 5
#linebreak()

+ $E(Y)=n E(X)=0.$

+ $E(Y^2)=sum E(X_i^2)+2 sum_(i<j) E(X_i X_j)=n.$

+ $E((sum X_i)^4)$ 展开后有四类项:

  - $X_i^4: quad n dot 1=n.$ 

  - $X_i^3 X_j: quad E(X_i^3 X_j)=E(X_i X_j)=0.$

  - $X_i^2 X_j^2: quad binom(n,2) binom(4,2) dot 1=3n(n-1).$

  - $X_i^2 X_j X_k: quad E(X_i^2 X_j X_k)=E(X_j X_k)=0.$

  - $X_i X_j X_k X_l: quad E(X_i X_j X_k X_l)=0.$
  
  于是 $E(Y^4)=n+3n(n-1)=3n^2-2n.$

+ 要证 $P(Y^4>=k^4 dot n^2)<=3\/k^4.$ 由 Markov 不等式即证.

== Question 6
#linebreak()

+ $E(X_i)=n\/m.$

+ 记事件 $A_i$ 表示第 $i$ 个桶中有球, $Y=A_1+dots+A_m$. $P(A_i)=1-((m-1)/m)^n, $ $ E(Y)=m P(A_i)=m (1-((m-1)/m)^n). $

  计算 $E(Y^2):$ $ E(Y^2)=m E(A_i^2)+m(m-1)underbracket(E(A_i A_j), i!=j). $ 其中 $E(A_i^2)=E(A_i),$ $ E(A_i A_j)=1-((m-2)/m)^n. $ 于是 $ E(Y^2)=m(1-((m-1)/m)^n)+m(m-1)(1-((m-2)/m)^n), \ "Var"(Y)=E(Y^2)-E(Y)^2. $

+ 对于 $i=j,$ $ "Cov"(X_i,X_i)="Var"(X_i)=n dot (m-1)/m^2. $
  对于 $i!=j,$ $ "Cov"(X_i,X_j)&=E(X_i X_j)-(n/m)^2, $ 考虑将 $X_i$ 写成 $delta_(i,1)+delta_(i,2)+dots+delta_(i,n),$ 其中 $delta_(i,k)$ 表示第 $k$ 个球是否放到第 $i$ 个桶里. 此时 $ E(X_i X_j)&=E((sum_k delta_(i,k))(sum_l delta_(j,l))) \ &= E(sum_(k,l) delta_(i,k) delta_(j,l)). $ 
  
  - 对于 $k=l,$ $delta_(i,k)$ 和 $delta_(j,l)$ 至少有一个为 $0, E(delta_(i,k) delta_(j,l))=0.$ 

  - 对于 $k!=l,$ $delta_(i,k)$ 和 $delta_(j,l)$ 独立, $E(delta_(i,k) delta_(j,l))=1\/m^2.$

  综上所述, $ E(X_i X_j)=(n(n-1))/m^2, quad "Cov"(X_i,X_j)=-n/m^2. $