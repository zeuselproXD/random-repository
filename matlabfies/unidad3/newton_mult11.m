function yzz=newton_mult11
    f1=@(x,y) 2*x.^3-y.^2-1;
    f2=@(x,y) x.*y.^3-y-4;
    fdx1=@(x,y) 6*x^2;fdy1=@(x,y) -2*y;
    fdx2=@(x,y) y^3;fdy2=@(x,y) 3*x*y^2-1;
    x0=[1,1]';
    for i=1:10
        A=[fdx1(x0(1),x0(2)) fdy1(x0(1),x0(2)) ; fdx2(x0(1),x0(2)) fdy2(x0(1),x0(2))];
        d1=det(A);
        s1=[-f1(x0(1),x0(2)) -f2(x0(1),x0(2))];
        A1=A;
        A1(:,1)=s1;d2=det(A1);
        A(:,2)=s1;d3=det(A);
        disp([v(1)=d2/d1 v(2)=d3/d1]);
        x1(1)=v(1)+x0(1);
        x1(2)=v(2)+x0(2);
        disp(x1);
        if norm(x1-x0)<0.001
            break
        endif
        x0=x1;
    endfor
endfunction
