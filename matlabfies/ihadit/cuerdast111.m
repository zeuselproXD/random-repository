F=@(x)2*x-2*exp(-2*x)/x

a=0.2;b=5;er1=0.001;t=a;

for i=1:100
  x=b-F(b)*(b-a)/(F(b)-F(a));
  if F(x)*F(a)<0 b=x;
    else a=x;end;
    fprintf('%d a%f x%f b%f er%f\n',i,a,x,b,abs(t-x));
  if abs(t-x)<er1 break;end;t=x;

end

