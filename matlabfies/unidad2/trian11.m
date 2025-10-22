A=[1 3 7 9;2 0 4 3;1 1 1 1;2 3 1 4]
n=size(A);n=n(1);
for i=1:n
  p=A(i,i);
  for j=i+1:n
    k=A(j,i);
    for l=i:n
      A(j,l)=A(i,l)*(-k/p)+A(j,l);
    endfor
  endfor
endfor
A
