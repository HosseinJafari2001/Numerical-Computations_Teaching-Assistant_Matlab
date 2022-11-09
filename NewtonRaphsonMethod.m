clear;clc;

% Newton-Raphson Method in MATLAB
 
a=input('moadele ra bedone (=0) vared konid (mesal::: 2*x^2-3+exp(x)):','s');
x(1)=input('baze ra vared konid (hamrah ba [] ) :');
error=input('mizan error ghabele ghabol cheqad bashad:');
f=inline(a)
dif=diff(sym(a));
d=inline(dif);
for i=1:100
x(i+1)=x(i)-((f(x(i))/d(x(i))));
err(i)=abs((x(i+1)-x(i))/x(i));
if err(i)<error
break
end
end
root=x(i)