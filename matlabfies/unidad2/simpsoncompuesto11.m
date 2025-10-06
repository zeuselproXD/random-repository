function yss=simpsoncompuesto11
  format long
  a=0;b=pi/2;m=3;n=2*m;x=a;su=0;h=(b-a)/n;f=@(x) sin(x);s1=0;
  for i=1:n-1
    x=x+h;
    if mod(i,2)==0
      s1=s1+f(x);
    else
      su=su+f(x);
    endif
  endfor
su=su*4+s1*2+f(a)+f(b);
su=su*h/3
