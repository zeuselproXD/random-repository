function yss=dobles_medios11
  ff=@(x,y) x+y;
  d=@(y) 1;c=@(y) 0;
  a=0;b=2;
  m=4; %para x
  n=4; %para y
  h=(b-a)/n;su=0;
  h1=h/2;y1=a+h1;
  for i=1:n
    s1=0;k=(d(y1)-c(y1))/m;
    x=c(y1)+k/2;
    for j=1:n
      s1=s1+ff(x,y1);
      x=x+k;
    endfor
    y1=y1+h;
    su=su+s1*k;
  endfor
su=su*h
endfunction
