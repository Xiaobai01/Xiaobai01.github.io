x=[0.4,0.55,0.8,0.9,1];
y=[0.41075,0.57815,0.88811,1.02652,1.17520];
xi=0.85;
n=length(x);
m=length(y);
A=zeros(n);    
A(:,1)=y;      
for j=2:n               
    for i=1:(n-j+1)     
        A(i,j)=(A(i+1,j-1)-A(i,j-1))/(x(i+j-1)-x(i));   
    end
end
N(1)=A(1,1);
for j=2:n
    T=1;
    for i=1:j-1
        T=T*(xi-x(i));
    end
    N(j)=A(1,j)*T;
end
yi=sum(N); 
yi
