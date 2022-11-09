clear;clc;

% RegulaFalsi Method in MATLAB
% Setting x as symbolic variable
syms x;

% Input Section
y = input('moadele ra bedone (=0) vared konid (mesal::: 2*x^2-3+exp(x)):');
a = input('adade kochiktare baze ra vared konid: ');
b = input('adade bozorgtare baze ra vared konid: ');
e = input('mizan error ghabele ghabol cheqad bashad: ');

% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

% Implementing Bisection Method
if fa*fb > 0 
    disp('adade hads zade shode nadorost mibashad!!!');
else
    c = a - (a-b) * fa/(fa-fb);
    fc = eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc< 0
            b =c;
            fb = eval(subs(y,x,b));
        else
            a =c;
            fa = eval(subs(y,x,a));
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n', c);
end