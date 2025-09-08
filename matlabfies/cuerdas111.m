function y=cuerdas111
f=@(x) x/2-3/4+5/4*exp(-2*x)
a=0;b=1;er1=0.0001;t=a;
for i=1:100
    x=b-f(b)*(b-a)/(f(b)-f(a));
    if f(x)*f(a)<0 b=x;
    else a=x; end;
    fprintf('%d a%f x%f b%f er%f\n',i,a,x,b,abs(t-x));
    if abs(t-x)<er1 break;end
    t=x;
end %fin