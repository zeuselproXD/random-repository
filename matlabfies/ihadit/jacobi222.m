function ydd=jacobi222
  A=[8 3 1 2 1;2 9 3 0 3;1 4 7 1 0;3 4 5 15 1;2 0 4 3 12];
  b=[-3 5 7 11 -2]';
  x0=[1 1 1 1 1]'; #condicion inicial
  B=A;n=size(A);n=n(1);
  for i=1:n
    k=A(i,i);
    B(i,:)=B(i,:)/k;B(i,i)=0;b1(i)=b(i)/k;
  endfor
  B
  norm(B,inf)
  for i=1:500
    x1=b1'-B*x0;
    if norm(x0-x1)<.00001
      break;
    endif
    x0=x1;#disp(x0');
  endfor
  i;
  x1;
endfunction
