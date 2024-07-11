//Suryakant Sharma 21730823
//program  to solve the differential equation of radioactive decay,newton;s law of cooling, discharging rc circuit by rk-2 method
clear
clf()
K=1;

function y1=f(t,y)
    y1=-K*y;
endfunction
k=0.01;
t(1)=0;
y(1)=1;
i=1;
for z=0:k:10
    k1=k*f(t(i),y(i));
    k2=k*f(t(i)+k,y(i)+k1);
    t(i+1)=z;
    y(i+1)=y(i)+(k1+k2)/2;
    i=i+1;
end;
subplot(221);
xgrid(1);
xtitle("radioactive decay by rk-2 ","x-axis","y-axis");
plot(t,y);
//newton's law of cooling
K=1;
y0=5;
function y1=f(t,y)
    y1=-K*(y-y0);
endfunction
k=0.01;

t(1)=0;
y(1)=100;
i=1;
for z=0:k:10
    k1=k*f(t(i),y(i));
    k2=k*f(t(i)+k,y(i)+k1);
    t(i+1)=z;
    y(i+1)=y(i)+(k1+k2)/2;
    i=i+1;
end;
subplot(222);
xgrid(1);
xtitle("newtons law of cooling by rk-2","x-axis","y-axis");
plot(t,y);
//discharging equation of rc circuit
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
    k2=k*f(t(i)+k,y(i)+k1);
    t(i+1)=z;
    y(i+1)=y(i)+(k1+k2)/2;
    i=i+1;
end;
subplot(223);
xtitle("discharging of RC cicuit by rk-2","x-axis","y-axis");
xgrid(1);
plot(t,y);

