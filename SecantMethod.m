clear;
clc;
% Secant Method in MATLAB
%  vorodi...
a=input('moadele ra bedone (=0) vared konid (mesal::: 2*x^2-3+exp(x)):','s');
f=inline(a)
 
x(1)=input('adade kochiktare baze ra vared konid: ');
x(2)=input('adade bozorgtare baze ra vared konid: ');
n=input('mizan error ghabele ghabol cheqad bashad: ');

% mohasebat... secanat method
iteration=0;
 
for i=3:1000
   x(i) = x(i-1) - (f(x(i-1)))*((x(i-1) - x(i-2))/(f(x(i-1)) - f(x(i-2))));
    iteration=iteration+1;
    if abs((x(i)-x(i-1))/x(i))*100<n
        root=x(i)
        iteration=iteration
        break
    end
end