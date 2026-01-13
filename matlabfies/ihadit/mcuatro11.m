function yss=mcuatro11
  format long
  a=0;b=pi/2;m=40;n=4*m;
  h=(b-a)/n;su=s1=s2=0;x=a;
  f=@(x) sin(x);
  for i=1:n-1
    x=x+h;
    if mod(i,4)==0
      s1=s1+f(x);
    endif
    if (mod(i,2)==0 && mod(i,4)!=0)
      s2=s2+f(x);
    endif
    if mod(i,2)!=0
      su=su+f(x);
    endif
  endfor
  int1=7*f(a)+7*f(b)+14*s1+12*s2+32*su;
  int1=2*h/45*int1
endfunction
