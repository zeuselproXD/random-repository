function yss=trapecios11
  format long
  a=0;b=pi/2;n=10;
  h=(b-a)/n;su=0;x=a;
  f=@(x) sin(x);
  for i=1:n-1
    x=x+h;
    su=su+f(x);
  endfor
su=su*2+f(a)+f(b);
su=h/2*su
