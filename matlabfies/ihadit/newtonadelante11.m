
% newton adelante
function y=newtonadelante11
  x=[1  1.2  1.4  1.6  1.8];y=[2  2.3  2.6  2.4  2.1];
  u=v=w=[]; t = y(1) ;w=y; n=length(x);
  for i = 1 : n
    u(i)=t;
    for j = 1 : (n - i)
      v(j) = w(j + 1) - w(j);
    end;
    t = v(1); w=v;
  endfor
  h = x(2) - x(1);x0 = 1.23;
  t = (1.23 - 1) / h;   su=u(1); p1 = 1 ;t1 = 1;
  u
  for i = 2:n
    t1=t1 * (t - (i - 2));
    su=su+u(i)*t1/p1;
    p1=p1*i;
  endfor; su
endfunction
