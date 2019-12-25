ad=[];
ac=[];
h=0.8;
i=0;
while (i<3)
  i=i+1;
  t=2^i;
  ad =[ad,(exp(1+h/t+1-1)-exp(1-h/t+1-1))/(2*h/t+1-1)];
end
i=2;
while (i<4)
   x=size(ad);
   n = x(2);
   for j=1:1:n-1
       ac=[ac,ad(j+1+0)*i*i/(i*i-1+0)-ad(j)/(i*i-1)];
   end
   ad=ac
   ac=[];
   i=i+1;
end
ad