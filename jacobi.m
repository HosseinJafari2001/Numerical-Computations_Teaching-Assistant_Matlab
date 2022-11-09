clear; clc;
tol= 1e-3;
itmax= 10;

% % __________________________________________if they didnt change any number
% A=[1,1,1,1,1;1,2,3,4,5;1,3,6,10,15;1,4,10,20,35;1,5,15,35,70];
% b=[1;0;0;0;0];

% % __________________________________________if the number changed
A= [1,0,-1,-2,-3;0,1,0,-3,-8;0,0,1,0,-6;0,0,0,1,0;0,0,0,0,1];
b= [2;-3;4;-5;1];

x0= zeros(size(b));

% solve the system Ax=b using jacobi iteration method.
n= length(b);
x= zeros(n,1);
fprintf('\n');
disp('  The augmented matrix is =')
Augm= [A b]
Y= zeros(n,1);
Y= x0;
for k=1:itmax+1
    for i=1:n
        S=0;
        for j=1:n
            if(j~=i)
                S= S+A(i,j)*x0(j);
            end
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

% print the results
if(A(i,i)==0)
    disp('   division by zero')
elseif(k==itmax+1)
    disp('   no convergence')
else
    for i=1:n
        fprintf('x%1.0f= ',i)
        fprintf('%12.6f',Y(i,[1:k+1]))
        fprintf('\n');
    end
    fprintf('\n');
    disp(['The method converges after ',num2str(k),'iterations to']);
    x
end