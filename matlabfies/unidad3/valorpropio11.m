function yzz=valorpropio11
    x0=[1 0 1]';l0=1;
    A=[3 2 5; 2 5 4;5 4 3];
    x0=A*x0;
    for i=1:1
        l1=x1'*x1/(x1'*x0/l0);
        x1=A*x0/l1;
        disp([i x1' l1])
        if abs(l1-l0)<0.0001
            break
        endif
        x0=x1;l0=l1;
    endfor
endfunction
