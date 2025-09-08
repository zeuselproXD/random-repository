function y=secante11
ff=@(x)x/2-3/4+5/4*exp(-2*x);
x0=0;x1=0.1;er1=0.0001;
for i=1:100
    x2=x1-ff(x1)*(x1-x0)/(ff(x1)-ff(x0));u=abs(x2-x1);
    fprintf('%d x0=%f x1=%f x2=%f er=%f\n',i, x0,x1,x2,u);
    if u<er1 break;end
    x0=x1;x1=x2;end