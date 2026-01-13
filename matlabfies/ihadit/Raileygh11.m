function yss=Raileygh11
  A=[2 3 4 3;1 2 3 5;3 1 2 0;1 9 1 1];
  v0=[0 1 0 0]';v0=v0/norm(v0);
  n=size(A);n=n(1);
  for i=1:5
    u=(v0'*A*v0)/(v0'*v0);
    v1=[A-u*eye(4)]\v0;
    v0=v1/norm(v1);
    disp([u v0']);
    if norm(v1-v0)<0.001
      break
    endif
  endfor
  [a1 a2]=eig(A);
endfunction
