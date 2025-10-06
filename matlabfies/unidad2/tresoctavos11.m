function yss=tresoctavos11
  a=0;b=pi/2;m=5;n=3*m;
  h=(b-a)/n;su=s1=0;x=a;
  f=@(x) sin(x);
  for i=1:n-1
    x=x+h;
    if mod(i,3)==0
      s1=s1+f(x);
    else
      su=su+f(x);
    endif
  endfor
su=su*3+s1*2+f(a)+f(b);
su=su*3/8*h
