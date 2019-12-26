function [x,L,U]=thomas(a,b,c,f)
a=[-1,-1,-1,-1];
c=[-1,-1,-1,-1];
b=[2,2,2,2,2];
f=[1,0,0,0,0];
n=length(b); 
u(1)=b(1); 
for i=2:n 
if(u(i-1)~=0) 
l(i-1)=a(i-1)/u(i-1); 
u(i)=b(i)-l(i-1)*c(i-1); 
else 
break;
end
end
L=eye(n)+diag(l,-1); 
U=diag(u)+diag(c,1); 
x=zeros(n,1); 
y=x; 
y(1)=f(1); 
for i=2:n 
y(i)=f(i)-l(i-1)*y(i-1); 
end
if(u(n)~=0) 
x(n)=y(n)/u(n); 
end
for i=n-1:-1:1 
x(i)=(y(i)-c(i)*x(i+1))/u(i); 
end
y