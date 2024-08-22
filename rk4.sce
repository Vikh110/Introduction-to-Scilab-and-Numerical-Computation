//Vishwas Khandelwal 17036567106
//program to solve  differential equation of radioactive decay ,newton's law of cooling,rc circuit by rk-4 method
clf()
K=1;

function y1=f(t,y)
    y1=-K*y;
endfunction
k=0.01;
t(1)=0;
y(1)=100;
i=1;
//by rk-4 method
for z=0:k:10
    k1=k*f(t(i),y(i));
    k2=k*f(t(i)+(k)/2,y(i)+(k1)/2);
    k3=k*f(t(i)+(k)/2,y(i)+(k2)/2);
    k4=k*f(t(i)+(k)/2,y(i)+(k3));
    t(i+1)=z;
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
    i=i+1;
end;
subplot(221);
xtitle("radioactive decay by rk-4");
xlabel("x-axis");
ylabel("y-axis");
xgrid(1);

plot(t,y);
//newton's law of cooling
K=1;
y0=5
function y1=f(t,y)
    y1=-K*(y-y0);
endfunction
k=0.01;
t(1)=0;
y(1)=100;
i=1;

for z=0:k:10
    k1=k*f(t(i),y(i));
    k2=k*f(t(i)+(k)/2,y(i)+(k1)/2);
    k3=k*f(t(i)+(k)/2,y(i)+(k2)/2);
    k4=k*f(t(i)+(k)/2,y(i)+(k3));
    t(i+1)=z;
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
    i=i+1;
end;
subplot(222);
xtitle("Newtons law of cooling by rk-4")
xlabel("x-axis")
ylabel("y-axis")
xgrid(1);
plot(t,y);
//RC circuit
R=200000;
C=10e-6;
function y1=f(t,y)
    y1=-y/(R*C);
endfunction
k=0.01;
t(1)=0;
y(1)=1;
i=1;

for z=0:k:10
    k1=k*f(t(i),y(i));
    k2=k*f(t(i)+(k)/2,y(i)+(k1)/2);
    k3=k*f(t(i)+(k)/2,y(i)+(k2)/2);
    k4=k*f(t(i)+(k)/2,y(i)+(k3));
    t(i+1)=z;
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
    i=i+1;
end;
subplot(223);
xtitle("discharging equation of rc circuit by rk-4","x-axis","y-axis");
xgrid(1);
plot(t,y);

