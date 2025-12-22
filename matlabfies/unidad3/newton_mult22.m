function yzz=newton_mult22
    f1=@(x) [2*x(1).^3-x(2).^2-1 x(1).*x(2).^3-x(2)-4]';
    df1=@(x) [6*x(1)^2 -2*x(2) ; x(2)^3 3*x(1).*x(2).^2-1];
    x0=[1 1]';
    for i=1:20
        A=df1(x0);s1=-f1(x0);d1=det(A);A1=A;
        A1(:,1)=s1;A(:,2)=s1;
        v=[det(A1)/d1 det(A)/d1]';
        x1=v+x0;disp(x1');
        if norm(v)<0.001
            break
        endif
        x0=x1;
    endfor
endfunction
