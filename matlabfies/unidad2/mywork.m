f=@(x) sin(x);a=0;b=pi/2;n=2;h1=(b-a)/n;su=0;
format long
for i=1:n
  x0=(i-1)*h1+a;xn=a+h1*i;
  h=(xn-x0)/3;
  su=su+3*h/8*(f(x0)+3*f(x0+h)+3*f(x0+2*h)+f(xn));
endfor
su
