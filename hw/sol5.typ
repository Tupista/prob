== Question 1
#linebreak()

有 $P(Y>=t)&=product_(i=1)^n P(X_i>=t) &=product_(i=1)^n e^(-lambda_i t) &=exp(-t dot sum lambda_i),$ 这说明 $Y~"Exp"(sum lambda_i).$

== Question 2
#linebreak()

+ $f_U (u)=integral_0^1 f_X (x) f_Y (u-x)dif x=display(cases(u quad quad &", " 0<=u<=1",", 2-u &", " 1<u<=2.))$

  $f_V (v)=integral_0^1 f_X (x) f_Y (x-v)dif x=display(cases(v+1 &", " -1<=v<=0",", 1-v &", " 0<v<=1.))$

+ $ f_(U,V)(u,v)=f_(X,Y) ((u+v)/2, (u-v)/2) dot abs(partial(x,y)/partial(u,v))=1 dot "abs"(mat(1/2,1/2;1/2,-1/2;delim:"|"))=1/2. $ 取值范围是 $(0,0), (1,1), (2,0), (1,-1)$ 顺次连接形成的正方形内.

+ 利用几何形状直接写出 $f_U (u)=display(cases(u quad quad &", " 0<=u<=1",", 2-u &", " 1<u<=2","))thick f_V (v)= display(cases(v+1 &", " -1<=v<=0",", 1-v &", " 0<v<=1.))$ 

  $V$ 的取值范围与 $U$ 有关, 故两者不独立.

+ 
  - 对于 $0<=u<=1:f_(V|U=u) (v)=f_(U,V) (u,v)\/f_U (u)=1/(2u).$

  - 对于 $1<u<=2:f_(V|U=u) (v)=1/(4-2u).$

+ 先计算 $sigma(U)$ 和 $sigma(V):$ $ sigma(U)&=sqrt("Var"(U))=sqrt(E(U^2)-E(U)^2) \ &=sqrt(integral_0^1 u^3dif u+integral_1^2 (2-u)u^2 dif u-1) \ &=sqrt(1/4+lr((2/3u^3-1/4u^4)|)_1^2 -1) \ &=sqrt(1/4+(16/3-4-2/3+1/4)-1)=sqrt(1/6). $  $V$ 的边际分布和 $U$ 仅相差一个偏移, 故 $sigma(V)=sqrt(1/6).$

  再来计算 $"Cov"(U,V):$ $ "Cov"(U,V)=E(U V)-E(U)E(V), $ 其中 $ E(U V)=integral_0^2 integral_(-u)^(u) 1/2 u v dif v dif u=1/2integral_0^2 u (integral_(-u)^u v dif v)dif u=0, $ 故 $"Cov"(U,V)=0,$ 两变量不相关.

#pagebreak()

== Question 4
#linebreak()

+ 写出 $A=display(mat(a_1,dots,a_n;b_1,dots,b_n)),$ 则 $(X,Y)^T=A G^T,$ 故 $ (X,Y)~N(A dot bold(0),A dot 1_(n times n) dot A^T)=N(bold(0),mat(1,rho;rho,1)). $ #h(1fr)

+ $ x^2+y^2-2rho x y&=(x-rho y)^2+(1-rho^2)y^2 \ &=(r sqrt(1-rho^2)cos theta)^2+(1-rho^2)r^2 sin^2 theta \ &=(1-rho^2)r^2. $

+ 先求 $display(partial(X,Y)/partial(R,Theta)):$ $ (partial X)/(partial R)=sqrt(1-rho^2)cos Theta+rho sin Theta, quad & (partial X)/(partial Theta)=-R sqrt(1-rho^2)sin Theta+R rho cos Theta, \ (partial Y)/(partial R)=sin Theta, quad & (partial Y)/(partial Theta)=R cos Theta. $ 

  于是 $ abs(J)=mat(sqrt(1-rho^2)cos Theta+rho sin Theta, -R sqrt(1-rho^2)sin Theta+R rho cos Theta;sin Theta, R cos Theta; delim:"|")=R sqrt(1-rho^2). $

  于是 $ f_(R,Theta) (r, theta)&=f(x,y) dot abs(J) \ &=1/(2pi sqrt(1-rho^2))exp(-(x^2+y^2-2rho x y)/(2(1-rho^2))) dot r sqrt(1-rho^2) \ &=r/(2pi) exp(-(r^2(1-rho^2))/(2(1-rho^2)))=1/(2pi)r e^(-r^2/2) . $

  边际密度函数: $ f_R (r)=r e^(-r^2/2), quad f_Theta (theta)=1/(2pi). $

  $R,Theta$ 两变量相互独立.

+ 这相当于求 $P(0<=Theta<=pi\/2)=1\/4.$

+ 伸缩 $a,b$ 不改变 $X,Y$ 的符号, 只需考虑 $a,b$ 是单位向量或为 $bold(0)$ 的情形.

  先考虑 $a,b!=0:$
  - $a!=b$ 且 $a!=-b:$ 如上, 所求 $=1\/4.$
  - $a=b:$ 退化为 $P(X>=0),$ 由 $X~N(0,1)$ 知所求 $=1\/2.$
  - $a=-b:$ 退化为 $P(X=Y=0),$ 所求 $=0.$

  再考虑 $a,b$ 恰有一个为 $0:$ (不失一般性, 设 $a=0,b!=0$) 退化为 $P(Y>=0),$ 所求 $=1\/2.$

  $a=b=0$ 时所求 $=1.$

== Question 5
#linebreak()

+ $X_i^2~Gamma(1\/2,1\/2), Y~Gamma(n\/2,1\/2).$

+ $ E(e^(t(Y-n)))&=integral_0^(+oo) e^(t(x-n)) (1\/2)^(n/2)/Gamma(n\/2) x^(n/2-1) e^(-1/2x) dif x \ &= 1/Gamma(n/2) e^(-t n)(1/2)^(n/2) integral_0^(+oo) x^(n/2-1)e^(-(1/2-t)x)dif x \ &=1/Gamma(n/2) e^(-t n) (1/2)^(n/2) Gamma(n/2) (1/2-t)^(-n/2) \ &=e^(-t n) (1/(1-2t))^(n/2) \ &=exp(-t n-n/2 ln (1-2t)) \ &<=exp(-t n-n/2(-2t-4t^2))=e^(2 t^2 n). $

+ $ P(Y>=(1+Delta)n)&=P(Y-n>=Delta n) \ &=P(e^(t(Y-n))>=e^(t Delta n)) \ &<=exp(2t^2n-t Delta n). $ 取 $t=Delta\/4$ 即证.

+ $ P(Y<=(1-Delta)n)&=P(e^(-t (Y-n))>=e^(t Delta n)), $ 其中 $E(e^(-t(Y-n)))<=exp(2(-t)^2n)=exp(2t^2 n),$ 于是 #h(1fr) $ P(Y<=(1-Delta n))<=exp(2t^2 n-t Delta n), $ 取 $t=Delta\/4$ 即证.

== Question 6
#linebreak()

+ $tr(A^3)$ 由 $A_(i j)A_(j k)A_(k i)$ 形式的项组成, 其中

  - 至少有一个元素仅出现一次 (无妨设为 $A_(i j)$), 则 $ E(A_(i j)A_(j k)A_(k i))=E(A_(i j))E(A_(j k)A_(k i))=0. $

  - $i,j,k$ 全相同,  #h(1fr)$ E(A_(i i)^3)=0. $

  故 $E(tr(A^3))=0.$

  $tr(A^4)$ 中期望非零的项只有 $A_(i j) A_(j i) A_(i j) A_(j i)$ 和 $A_(i i)^4,$ $ E(tr(A^4))=n E(A_(i i)^4)+n(n-1)E(A_(i j)^2)E(A_(j i)^2)=3n+n(n-1)=n^2+2n. $ 
  
  其中 $ E(A_(i i)^4)=E(X^2)&=integral_0^(+oo) x^2 dot (1\/2)^(1/2)/(Gamma(1\/2))x^(-1/2)e^(-1/2 x)dif x \ &=1/Gamma(1\/2) dot 1/sqrt(2) integral_0^(+oo) x^(3/2)e^(-1/2 x) dif x \ &=2/sqrt(2pi) integral_0^(+oo) (2t)^(3/2)e^(-t)dif t \ &=(4 Gamma(5\/2))/sqrt(pi)=3. $

+ $E(tr(B^2))=n E(B_(i i)^2)+n(n-1)E(B_(i j)^2)=n^2 E(B_(i i)^2)=n^2,$

  对 $B^4$ 有贡献的项包括 

  - $B_(i i)^4,$

  - $B_(i i)^2B_(i j)B_(j i), B_(i i)B_(i j)B_(j i)B_(i i), B_(i j)B_(j i)B_(i i)^2, B_(i j)B_(j j)^2B_(j i), B_(i j)B_(j i)B_(i j)B_(j i),$

  - $B_(i j)B_(j i)B_(i k)B_(k i), B_(i j)B_(j k)B_(k j)B_(j i).$

  $ E(tr(B^4))&=n^2 E(B_(i j)^4)+4n(n-1)E(A_(i j)^2)^2+2n(n-1)(n-2)E(A_(i j)^2)^2 \ &= 3n^2+4n(n-1)+2n(n-1)(n-2) \ &=3n^2+4n^2-4n+2n^3-6n^2+4n \ &=2n^3+n^2. $

  (利用 Wick 配对模式计算更准确)

+ 已知 $B$ 可对角化, 若 $B$ 有特征值 $lambda_i,$ 则 $B^4$ 有特征值 $lambda_i^4>=0.$ 于是 $ P(abs(lambda_i)>4n^(3\/4))&=P(lambda_i^4>64n^3) \ &<=P(tr(B^4)>64n^3) \ &<=(2n^3+n^2)/(64n^3)<0.1. $