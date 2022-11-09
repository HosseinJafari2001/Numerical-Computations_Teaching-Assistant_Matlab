clear;
clc;
%% section one
format long g
eps2=1;
num2str(eps2);
while (1+eps2 > 1)
    eps2=eps2/2;
end
eps2=eps2*2;
% disp('epsilon = ')
% disp(eps)
sprintf('%.32f',eps2)
%% section two
eps3 = eps

% eps3 = 2^-52;
% regexprep( sprintf('%.1074f', eps3), '0+$', '', 'lineanchors')

% eps3=2^-52;
% sprintf('%.100f',eps3)

% disp(eps)
% fprintf(

