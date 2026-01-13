function ydd=jacobi11
  A=[4 1 2;3 6 1;5 4 11];
  b=[10 17 27]';
  x0=[1 1 1]'; #condicion inicial
  B=A;
  B(1,:)=A(1,:)/A(1,1);B(1,1)=0;b1(1)=b(1)/A(1,1);
  B(2,:)=A(2,:)/A(2,2);B(2,2)=0;b1(2)=b(2)/A(2,2);
  B(3,:)=A(3,:)/A(3,3);B(3,3)=0;b1(3)=b(3)/A(3,3);
  for i=1:500
    x1=b1'-B*x0;
    if norm(x0-x1)<.000001
      break;
    endif
    x0=x1;#disp(x0');
  endfor
  x1
endfunction
