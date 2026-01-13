function yss=dobles_medios_variado11
  ff=@(x,y) exp(-x^2+y^2)/(x+y);
  d=@(x) 3*x;c=@(x) x;%x,c inferior, d superior
  a=0.2;b=3;%y,a inferior, b superior
  m=4; %para y
  n=4; %para x
  h=(b-a)/n;su=0;x=a+h/2;
  for i=1:n
    s1=0;k=(d(x)-c(x))/m;
    y=c(x)+k/2;
    for j=1:m
      s1=s1+ff(x,y);
      y=y+k;
    endfor
    x=x+h;
    su=su+s1*k;
  endfor
su=su*h
endfunction
