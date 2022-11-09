function trapezoidal(f,a,b,n)
% compute the integral of a f form a to b using the trapezoid rule
h= (b-a)/n;
S= feval(f,a);
fprintf('%2.0f%12.4f%14.6f\n',0,a,S);
for i=1:n-1
    x= a+h*i;
    g= feval(f,x);
    S= S+2*g;
    fprintf('%2.0f%12.4f%14.6f\n',i,x,g);
end
S= S+feval(f,b);
fprintf('%2.0f%12.4f%14.6f\n',n,b,feval(f,b));
INT= h*S/2;
fprintf('\n The integral of f(x) is = %16.8f\n',INT);