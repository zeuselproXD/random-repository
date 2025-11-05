A=[3 0 1 4;2 3 1 6;0 3 1 4;2 3 5 2]
n=size(A);n=n(1);K=1;
for i=1:n
  p=A(i,i);K=K*p;
  for j=i+1:n
    k=A(j,i);
    for l=i:n
      A(j,l)=A(i,l)*(-k/p)+A(j,l);
    endfor
  endfor
endfor
