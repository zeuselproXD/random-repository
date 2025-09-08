g=@(x)3/(x-3);
format long
u=g(0);
er1=0.00001;
fprintf('------------------------\n')
fprintf('|i|     x    |  error  |\n');
fprintf('------------------------\n')

for i=1:100
    g(u);
    if abs(u-g(u))>er1
     u=g(u);
    fprintf('%d| %f | %f\n',i,u,er1)
    fprintf('------------------------\n')
    else break;
    end;end