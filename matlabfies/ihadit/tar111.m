u=-5:0.001:5;
plot(u,lagrange11(u),[1 2 4],[2 4 3],'.','markersize',25)

function y2=lagrange11(k)
x=[1 2 4];y=[2 4 3];
n=length(x);su=0;x0=k;
for i=1:n
    nu1=lagran(x,i,x0);
    de1=lagran(x,i,x(i));
    su=su+y(i)*nu1/de1;
end
fprintf('valor f(%f)=%f\n',x0,su);
y2=su
end
function y1=lagran(x,j,x0)
n=length(x);p=1;
for i=1:n
    if i~=j
        p=p*(x0-x(i));
    end
    y1=p;
end;end
