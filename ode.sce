//Suryakant Sharma 21730823
//program to solve  differential equation of radioactive decay,newton's law of cooling,RC circuit using ode function
clf();
function y1=f(t,y)
    y1=-k*y;
endfunction
k=1;
t0=0;
y0=1;
t=0:0.01:10
y=ode("rk",y0,t0,t,f);
subplot(221);
xtitle("radioactive decay","x-axis","y=axis");
xgrid(1);
plot(t,y);
//newton's law of cooling 
function y1=f(t,y)
    y1=-k*(y-a);
endfunction
k=1;
a=5;
t0=0;
y0=100;
t=0:0.01:10
y=ode("rk",y0,t0,t,f);
subplot(222);
xtitle("newtons law of cooling","x-axis","y-axis");
xgrid(1);
plot(t,y);
//discharging of RC circuit
R=200000
C=10e-6
function y1=f(t,y)
    y1=-y/(R*C);
endfunction
t0=0;
y0=1;
t=0:0.01:10
y=ode("rk",y0,t0,t,f);
subplot(223);
xtitle("discharging of RC circuit","x-axis","y-axis");
xgrid(1);
plot(t,y);

