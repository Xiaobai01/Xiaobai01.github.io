b=[0;5;-2;5;-2;6];
A=[4,-1,0,-1,0,0;
   -1,4,-1,0,-1,0;
    0,-1,4,-1,0,-1;
   -1,0,-1,4,-1,0;
    0,-1,0,-1,4,-1;
    0,0,-1,0,-1,4];
x0=0;
eps=0.0001;
D = diag(diag(A));
L = -tril(A,-1);
U = -triu(A,1);
G = (D-L)\U;
f = (D-L)\b;
x = G*x0+f;
n=1;
while norm(x-x0,2)>=eps
    x0 = x;
    x = G*x0+f;
    n = n+1;
    if(n>=100)
        disp('Warning:迭代次数太多,可能不收敛');
        return;
    end
end
i=1;
while(i<7)
    disp(x(i,1));
    i=i+1;
end
n