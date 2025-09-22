% POLINOMIOS HERMITE   % de calculo
%
% Metodo de Hermite 
%
% Algoritmo
%
% paso1 x=[x1 ... xn]; y=[y1 ... y2]; y'=[y1' ... yn'];
% paso2 Construir una base de Lagrange [L1 ... Ln];
% paso3 Construir los cuadrados de cada base 
%            de Lagrange [L1^2 ... Ln^2]; 
% paso4 Construir una base del tipo p1i=[-2*Li'x (2*x(i)*Li'+1)];
%            donde Li' es la derivada de cada base de Lagrange
%            evaluada en xi, Li'=Li'(xi),
% paso5 Construir una base del tipo p2i=[x - xi];
% paso6 Construir [L1^2 ... Ln^2]*[-2*Li'x (2*x(i)*Li'+1)]
% paso7 Construir [L1^2 ... Ln^2]*[x -x(i)]
% paso8 f1=sumar y(i)*[L1^2 ... Ln^2]*[-2*Li'x (2*x(i)*Li'+1)]
% paso9 f3=sumar y'(i)*[L1^2 ... Ln^2]*[x -x(i)]
% paso10 s=f1+f2
% paso11 parar.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Se llama por:
% yf=hermite55(x_dominio,y_rango,y1_derivada, x01_punto_problema)
% 
% De la siguiente forma:
%
% >>x  = [1.3 1.6 1.9];
%
% >>y  = [.620086 .4554022 .2818186];
% 
% >>y1 = [-.5220232 -.5698959 -.5811571]; % es la derivada de y
%
% >>x01 = 1.5;   % valor para el calculo.
%
% >> yf = hermite55(x, y, y1, x01)
%
%  yf =  0.51183.
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% El programa devuelve en yf un vector con el valor de x0
% problema 
%

function ys1=hermite55(x,y,y1,x01)
  clear all;
  %x=[1.3 1.6 1.9]; y=exp(-x); y1=-exp(-x);x01=1.4;
  
  x=[1 2 4]; y=[2 4 3]; y1=[1 .5 -1]; 
  x01=1:.01:4;
  n=length(x);  [x' y' y1']
pp1=zeros(n);   
for i=1:n % Construccion de un polinomio Li de base de Lagrange
  t=1; t1=1;
  for j=1:n
    if i!=j 
      p=[1 -x(j)]; t1=t1*(x(i)-x(j));
      t=conv(t,p);
    end;
    %pp1(i,:)=t/t1;
  end;
  pp1(i,:) = t / t1; % Polinomio Li 
  pp2(i,:)=conv(pp1(i,:), pp1(i,:)); % construye (Li)^2
  p=0;
  for k=1:n-1 p=p+pp1(i,k)*(n-k)*x(i).^(n-k-1); end; % Li'
           % construye la derivada de Li y la evalua en xi 
  %p=polyval(polyder(pp1(i,:)),x(i));
  t=[-2*p 2*x(i)*p+1];
  pp3(i,:)=conv(t,pp2(i,:));  % H1()=(1-2(x-xi)*Li')*(Li)^2
  pp4(i,:)=conv(pp2(i,:),[1 -x(i)]); % H2()=(x-xi)*(Li)^2
end;
format rat;
pp1;  pp2;  pp3; pp4;
 format;
m=length(x01);
for j=1:m  % H() = yi*H1() + yi'*H2()
  su=0; x0=x01(j);
  for i=1:n     %
    su=su+y(i)*polyval(pp3(i,:),x0)+y1(i)*polyval(pp4(i,:),x0);
  end;
  ys(j)=su; 
end;

plot(x01,ys,'r','linewidth',2,x,y,'b','linewidth',2,x,y,'.k','markersize',30);
grid;
%title(['max err = ' num2str(norm(ys-y,inf))],'fontsize',12);
%axis([-2.02 2.02 0 1.1]);
