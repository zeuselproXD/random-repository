format long;

fi = @(x) exp(-2*x)./x;
F = @(x) x.^2 - 2*integral(fi,0.2,x) - 3;
a = 0.2;
b = 5;
er1 = 0.001;
for i = 1:100
    x = (a+b)/2;
    if F(a)*F(x) < 0
        t = b;
        b = x;
    else
        t = a;
        a = x;
    end
    err = abs(t-x);
    fprintf('%d   a%f   x%f   b%f   er%f\n', i, a, x, b, err);
    if abs(a-b) < er1
        break;
    end
end


