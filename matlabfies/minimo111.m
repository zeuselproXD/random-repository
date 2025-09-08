ff=@(x) (x).^2/2-5/4+(5/4)*exp(-2*x);
w=0:0.001:2;
plot(w,ff(w));grid;
fd=@(x)x+5/4*(-2)*exp(-2*x)
y=0:0.001:2;
plot(w,ff(w),w,fd(w));grid;

a=0;b=2;er1=0.0001;t=a;

for i=1:100
    x=b-fd(b)*(b-a)/(fd(b)-fd(a));
    if fd(x)*fd(a)<0 b=x;
    else a=x; end;
    fprintf('%d a%f x%f b%f er%f\n',i,a,x,b,abs(t-x));
    if abs(t-x)<er1 break;end
    t=x;
end %fin
