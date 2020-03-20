function RMAX=fun_max_rate(v,b,r,D,dt)
myeps=1e-5;
lb=0;
ub=1e2;
x1=lb+0.382*(ub-lb);
x2=lb+0.618*(ub-lb);
while (abs(x1-x2)>myeps)
if Rate(x1,v,b,r,D,dt)>Rate(x2,v,b,r,D,dt)
    ub=x2;
else
    lb=x1;
end
x1=lb+0.382*(ub-lb);
x2=lb+0.618*(ub-lb);
end
RMAX=Rate(x1,v,b,r,D,dt);
end

function R=Rate(T,v,b,r,D,dt)
    R=T/(T+dt)*log2(1+b*D*r/(v*T+D));
end