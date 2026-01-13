function yss=potencia_inversa22
  A=[2 3 4 3;1 2 3 5;3 1 2 0;1 9 1 1];A1=inv(A);
  u0=[0 1 0 0]';L0=1;
  for i=1:40
    u1=A1*u0*L0;
    L1=u1'*L0*u0/(u1'*u1);
    disp([i L1 (u1')/norm(u1)]);
    if abs(L1-L0)<0.000001
      break
    endif
    L0=L1;u0=u1;
  endfor
endfunction
