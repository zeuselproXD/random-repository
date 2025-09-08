function y=newton11
x0=0;er1=0.001;
ff=@(x)x/2-3/4+5/4*exp(-2*x);
fd=@(x)1/2+5/4*(-2)*exp(-2*x);
for i=1:100
    x1=x0-ff(x0)/fd(x0);
    u=abs(x1-x0);
    fprintf('%d x0=%f x1=%f er=%f\n',i,x0,x1,u)
    if u<er1 break; end;
    x0=x1;
end