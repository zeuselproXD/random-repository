A=[3 0 1 4;2 3 1 6;0 3 1 4]
n=size(A);n=n(1);K=1;
for i=1:n
  p=A(i,i);K=K*p;
  for j=i+1:n
    k=A(j,i);
    for l=i:n+1
      A(j,l)=A(i,l)*(-k/p)+A(j,l);
    endfor
  endfor
endfor
A
x(n)=A(n,n+1)/A(n,n);
for i=2:n
  q=0;
  for j=n-i+1:n-1
    q=q+x(j+1)*A(n-i+1,j+1);
  endfor
  x(n-i+1)=(A(n-i+1,n+1)-q)/A(n-i+1,n-i+1);
endfor
x
