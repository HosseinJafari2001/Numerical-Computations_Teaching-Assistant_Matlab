function runge_kutta(f,a,b,y0,n,order) 
% ba order martabeie on entekhab mishavad
% solve the initial-value problem y'=f(t,y),
% y(a)=y0 using runge kutta methods.
h= (b-a)/n;
y= y0;
% runge kutta 2
if(order==2)
    disp('_________________________________________')
    disp('  t  k1  k2  y  exact error  ')
    disp('_________________________________________')
    fprintf('\n')
    fprintf('%6.2f    ----        ----    %12.6f%12.6f%4.2f\n',a,y,y,0)
    for i=1:n
        t= a+(i-1)*h;
        k1= feval(f,t,y);
        k2= feval(f,t+h,y+h*k1);
        y= y+h*(k1+k2)/2;
        t= t+h;
        
        g='n';
        if(g~='n')
            err= abs(g-y);
            fprintf('%6.2f%12.6f%12.6f%12.6f%12.6f%8.2e\n',t,k1,k2,y,g,err)
        else
            fprintf('%6.2f%12.6f%12.6f%12.6f\n',t,k1,k2,y)
        end
    end
end

% rung kutta 4
if(order==4)
    disp('_________________________________________')
    disp('  t  k1  k2  k3  k4  y  exact error  ')
    disp('_________________________________________')
    fprintf('\n')
    fprintf('%6.2f     ----       ----       ----       ----     %12.6f%12.6f %4.2f\n',a,y,y,0)
    for i=1:n
        t= a+(i-1)*h;
        k1= feval(f,t,y);
        k2= feval(f,t+h/2,y+h*k1/2);
        k3= feval(f,t+h/2,y+h*k2/2);
        k4= feval(f,t+h,y+h*k3);
        y= y+h*(k1+2*k2+2*k3+k4)/6;
        t= t+h;
        
        g=exp(-t)+2*t-2;
        if(g~='n')
            err= abs(g-y);
            fprintf('%6.2f%12.6f%12.6f%12.6f%12.6f%12.6f%12.6f%8.2e\n',t,k1,k2,k3,k4,y,g,err)
        else
            fprintf('%6.2f%12.6f%12.6f%12.6f%12.6f%12.6f\n',t,k1,k2,k3,k4,y)
        end
    end
end