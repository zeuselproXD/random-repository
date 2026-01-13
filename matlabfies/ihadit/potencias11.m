function yss=potencias11
  A=[3 1;8 1];l0=1; u0=[1;0];
  for i=1:20
    u1=A*u0/l0;
    l1=u1'*u1/(u1'*u0/l0);
    disp([l1 u1']);
    if abs(l1-l0)<0.0001
      break
    endif
    l0=l1;u0=u1;
  endfor
endfunction
