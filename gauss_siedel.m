% function gauss_siedel(A,b,x0,tol,itmax)
clear; clc;
tol= 1e-3;
itmax= 200;

% % __________________________________________if they didnt change any number
% A=[1,1,1,1,1;1,2,3,4,5;1,3,6,10,15;1,4,10,20,35;1,5,15,35,70];
% b=[1;0;0;0;0];

% % __________________________________________if the number changed
A= [1,-6,9];
b= [4];

x0= zeros(size(b));

% solve the system Ax=b using Gauss-seidel iteration method
n= length(b);
x= zeros(n,1);
fprintf('\n');
disp(' The augmented matrix is =')
Augm= [A b]
Y= zeros(n,1);
Y= x0;
for k=1:itmax+1
    for i=1:n
        S=0;
        for j=1:i-1
            S= S+A(i,j)*x(j);
        end
        for j= i+1:n
            S= S+A(i,j)*x0(j);
        end
        if(A(i,i)==0)
            break
        end
        x(i)= (-S+b(i))/A(i,i);
    end
    err= abs(norm(x-x0));
    rerr= err/(norm(x)+eps);
    x0= x;
    Y= [Y x];
    if(rerr<tol)
        break
    end
end
% print the result
if(A(i,i)==0)
    disp(' No convergence')
else
    for i=1:n
        fprintf('x%1.0f= ',i)
        fprintf('%12.6f',Y(i,[1:k+1]))
        fprintf('\n');
    end
    fprintf('\n');
    disp(['bad az ',num2str(k),' bar tekrar natije hasel shod']);
    x
end
    