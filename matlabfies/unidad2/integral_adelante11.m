function yss=integral_adelante11
  f=@(x) sin(x);
  a=0;b=pi;n=50;su=0;h=(b-a)/n;
  for i=1:n
    x=a+i*h;
    su=su+f(x);
  endfor
int1=h*su
