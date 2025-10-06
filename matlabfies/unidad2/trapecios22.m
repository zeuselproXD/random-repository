function yss=trapecios22
  format long
  a=0;b=2;n=100;
  h=(b-a)/n;su=0;x=a;
  f=@(x) exp(-2*x);
  for i=1:n-1
    x=x+h;
    su=su+f(x);
  endfor
su=su*2+f(a)+f(b);
su=h/2*su
