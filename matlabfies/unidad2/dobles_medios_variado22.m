function yss=dobles_medios_variado22
  ff=@(x,y) x^2+y^2;
  d=@(x) x;c=@(x) 0;%x,c inferior, d superior
  a=0;b=2;%y,a inferior, b superior
  m=100; %para y
  n=100; %para x
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
