A=[3 2 2 2;4 7 4 5;3 4 8 3;2 5 3 7];
b=[2 1 2 1]';
%primero es diagonal dominante, si no lo es debe ser de norma menor a 1
%if norm(A)>1
%  a1=A(1,:);b1=b(1);
%  A(1,:)=A(3,:);b(1)=b(3);
%  A(3,:)=a1;b(3)=b1;
%endif
n=size(A);n=n(1);x0=zeros(n,1);
for i=1:n
  k1=A(i,i);A(i,i)=0;
  A(i,:)=A(i,:)/k1; b(i)=b(i)/k1;
endfor
v=x0;
for i=1:40
  for j=1:n
    v(j)=b(j)-A(j,:)*v;
  endfor
  if norm(v-x0)<0.0001
    break
  endif
  x0=v;
endfor
v
