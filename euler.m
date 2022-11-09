function euler(f,a,b,y0,n)
% solve the initial-value problem
% using euler method
h= (b-a)/n;
y=y0;

for i=1:n
    t= a+(i-1)*h;
    m=feval(f,t,y);
    y=y+h*m;
    
    t=t+h;
    g='n';
    if (g~='n')
        err=abs(g-y);
        fprintf('%6.2f%12.6f%12.6f%12.6f%12.6f%8.2e\n',t,m,y,g,err)
    else
        fprintf('%6.2f%12.6f%12.6f\n',t,m,y)
    end
end
        