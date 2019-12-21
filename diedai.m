x0=0;
f=inline('(2-exp(x))/10')
x1=f(x0);
while(abs(x1-x0)>0.5*10^(-4))
    x0=x1;
    x1=f(x0);
end
x1