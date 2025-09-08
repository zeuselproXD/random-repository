ff=@(x)cos(2*x)-x/10+1/20;
a=0;b=1;er1=0.001;
for i=1:20
    t=(a+b)/2;
    if ff(t)*ff(a)<0 b=t;
    else a=t;
    end
    aa=abs(a-b);
    fprintf('%d a=%f t=%f er=%f\n',i, a, t, b, aa);
    if aa<0.001 break;end
end