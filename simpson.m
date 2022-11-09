function simpson(f,a,b,n)
% compute the integral of a f form a to b using simpson's composite rule. n
% must be even.
if (n/2)~=floor(n/2)
    error('n must be even')
end
h= (b-a)/n;
s= feval(f,a);
fprintf('%2.0f%12.4f%14.6f\n',0,a,s);
for i=1:n/2
    m= 2*i-1;
    x= a+h*m;
    g= feval(f,x);
    s= s+4*g;
    fprintf('%2.0f%12.4f%14.6f\n',m,x,g);
    m= 2*i;
    x= a+h*m;
    g= feval(f,x);
    if(i==n/2)
        s= s+g;
    else
        s= s+2*g;
    end
    fprintf('%2.0f%12.4f%14.6f\n',m,x,g);
end
INT= h*s/3;
fprintf('\n  The integral of f(x) is = %16.8f\n',INT);