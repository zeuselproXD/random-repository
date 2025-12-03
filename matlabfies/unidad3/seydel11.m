A=[3 1 1;4 6 1;3 4 9];
b=[2 1 4]';x0=[0 0 0]';
n=size(A);n=n(1);
for i=1:n
  k1=A(i,i);
  A(i,:)=A(i,:)/k1; b(i)=b(i)/k1;
endfor
v=x0;
for i=1:40
  for j=1:n
    v(j)=A(j,:)*v+b(j);
  endfor
  if norm(v-x0)<0.0001
    break
  endif
  x0=v;
endfor
v
