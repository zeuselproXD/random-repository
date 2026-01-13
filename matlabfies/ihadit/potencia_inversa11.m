function yss=potencia_inversa11
  A=[3 2 4;2 5 -1;4 -1 2];A1=inv(A);
  u0=[0 1 0]';L0=1;
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
