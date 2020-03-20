close all
clear all
clc

v=80/3.6;
r=10^(20/10);
D=1e-2;
dt=1/300;

v1=1e-2/3.6;
v2=v-v1;
b1=0.5;
b2=0.5;
flag=0;
while flag==0
    R1=fun_max_rate(v1,b1,r,D,dt);
    R2=fun_max_rate(v2,b2,r,D,dt);
    for b1n=0.5:-1e-4:0
        R1n=fun_max_rate(v1,b1n,r,D,dt);
        if R1n>R2
            b1=b1n;
            continue
        else
            break
        end
    end
    
    b=b1+b2;
    b1=b1/b;
    b2=b2/b;
    if 1-b<=1e-4
        flag=1;
    end
end
R1=fun_max_rate(v1,b1,r,D,dt);
R2=fun_max_rate(v2,b2,r,D,dt);
[R1,R2]
figure
T=0:1e-6:1e-1;
R1=T./(T+dt).*log2(1+b1*D*r./(v1*T+D));
R2=T./(T+dt).*log2(1+b2*D*r./(v2*T+D));
plot(T,R1,'-b'); hold on
[c,ind]=max(R1);
plot(T(ind),c,'bo')

plot(T,R2,'-r'); hold on
[c,ind]=max(R2);
plot(T(ind),c,'rs')


v1=20/3.6;
v2=v-v1;
b1=0.5;
b2=0.5;
flag=0;
while flag==0
    R1=fun_max_rate(v1,b1,r,D,dt);
    R2=fun_max_rate(v2,b2,r,D,dt);
    for b1n=0.5:-1e-4:0
        R1n=fun_max_rate(v1,b1n,r,D,dt);
        if R1n>R2
            b1=b1n;
            continue
        else
            break
        end
    end
    
    b=b1+b2;
    b1=b1/b;
    b2=b2/b;
    if 1-b<=1e-4
        flag=1;
    end
end
R1=fun_max_rate(v1,b1,r,D,dt);
R2=fun_max_rate(v2,b2,r,D,dt);
[R1,R2]
figure
T=0:1e-6:1e-1;
R1=T./(T+dt).*log2(1+b1*D*r./(v1*T+D));
R2=T./(T+dt).*log2(1+b2*D*r./(v2*T+D));
plot(T,R1,'-b'); hold on
[c,ind]=max(R1);
plot(T(ind),c,'bo')

plot(T,R2,'-r'); hold on
[c,ind]=max(R2);
plot(T(ind),c,'rs')

v1=40/3.6;
v2=v-v1;
b1=0.5;
b2=0.5;
flag=0;
while flag==0
    R1=fun_max_rate(v1,b1,r,D,dt);
    R2=fun_max_rate(v2,b2,r,D,dt);
    for b1n=0.5:-1e-4:0
        R1n=fun_max_rate(v1,b1n,r,D,dt);
        if R1n>R2
            b1=b1n;
            continue
        else
            break
        end
    end
    
    b=b1+b2;
    b1=b1/b;
    b2=b2/b;
    if 1-b<=1e-4
        flag=1;
    end
end
R1=fun_max_rate(v1,b1,r,D,dt);
R2=fun_max_rate(v2,b2,r,D,dt);
[R1,R2]
figure
T=0:1e-6:1e-1;
R1=T./(T+dt).*log2(1+b1*D*r./(v1*T+D));
R2=T./(T+dt).*log2(1+b2*D*r./(v2*T+D));
plot(T,R1,'-b'); hold on
[c,ind]=max(R1);
plot(T(ind),c,'bo')

plot(T,R2,'-r'); hold on
[c,ind]=max(R2);
plot(T(ind),c,'rs')

