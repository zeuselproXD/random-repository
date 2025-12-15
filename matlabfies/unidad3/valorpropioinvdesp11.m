function yzz=valorpropioinvdesp11
    x0=[1 0 1]';l0=1;
    A=[3 2 5; 2 5 4;5 4 3];A=A+0.5*eye(3);
    B=inv(A);
    x1=B*x0;
    for i=1:100
        l1=x1'*x0*l0/(x1'*x1)-0.5;
        x2=B*x1*l1;
        disp([i l1])
        if abs(l1-l0)<0.001
            break
        endif
        x0=x1;x1=x2;l0=l1;
    endfor
endfunction
