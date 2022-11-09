clear;clc;

% Bisection Method in MATLAB
 
a=input('moadele ra bedone (=0) vared konid (mesal::: 2*x^2-3+exp(x)):','s');
f=inline(a);
 
xl=input('adade kochiktare baze ra vared konid:') ;
xu=input('adade bozorgtare baze ra vared konid:');
tol=input('mizan error ghabele ghabol cheqad bashad:');
 
if f(xu)*f(xl)<0
else
    fprintf('adade hads zade shode nadorost mibashad!!! dobare emtehan konid...\n');
    xl=input('adade kochiktare baze ra vared konid:\n') ;
    xu=input('adade bozorgtare baze ra vared konid:\n');
end
 
for i=2:1000
xr=(xu+xl)/2;
if f(xu)*f(xr)<0
    xl=xr;
else
    xu=xr;
end
 
if f(xl)*f(xr)<0
    xu=xr;
else
    xl=xr;
end
 
xnew(1)=0;
xnew(i)=xr;
if abs((xnew(i)-xnew(i-1))/xnew(i))<tol
    break
end
end
str = ['risheie moadele: ', num2str(xr), ''];