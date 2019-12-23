a=[1,0,1];
n0 =16;
y=[];
i=0;
while (i<=1)
    y =[y,4.0/polyval(a,i)];
    i=i+(1/n0)/2;
end
x = size(y);
n = x(2);
s=0;
i=1;
while (i<=n-2)
    s = s+y(i)+y(i+2)+4*y(i+1);
    i=i+2;
end
n0
s = s*(1/n0)/6;
s
