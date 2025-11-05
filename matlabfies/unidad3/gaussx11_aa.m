 function fs=gaussx11_aa(m1,b)

%m1=[1 -1 2 -1; 2 -2 3 -3; 1 1 1 0; 1 -1 4 3]; b=[-8 -20 -2 4];

s1=size(m1 );
  n=s1(1);
m1(:,n+1 )=b
c1=1;
for i=1:n-1
  if m1(i, i )==0 c1=0;
    for j=i+1:n
      if m1(j,i)!=0
        c=m1(j,:); m1(j, : )=m1(i , : );m1(i , : )=c; c1=1;
        break;
      end;
    end;
  end;
  if c1!=1 disp('No solucion'); return; end;
  r=m1(i, i );
  for j=i+1:n
    g=m1(j, i )/r;
    for k=i:n+1
        m1(j,k)=m1(j,k )-m1(i,k )*g;
    end;
  end;
end;
m1
ax(n)=m1( n,n+1)/m1(n,n);
for i=n-1:-1:1
  k=0;
  for j=i:n
    k=k+m1(i,j )*ax(j);
  end;
  ax(i)=(m1(i , n+1 )-k)/m1(i,i );
end;
fs=ax;
