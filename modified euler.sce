//Vishwas Khandelwal 17036567106
//program to solve  differential equation of radioactive decay,newton's law of cooling,rc circuit by modified euler method
K=1;
function F=f(m,n)
    F=-K*n;
endfunction
x0=input("enter initial state of x:")
y0=input("enter y0 at x0:");
xn=input("last value of x:")
h=input("h:")
a=1e-5;
y=y0;
i=1;

for x=x0:h:xn-h
    E=1.5*a
    f1=f(x,y);
    yc=y+h*f1;
    
    while E>a
        yp=yc;
        yc=y+h*(f1+f(x+h,yp))/2;
        E=abs(yp-yc);
    end;
      y=yc;
      z(i)=yc;
      t(i)=x;
     i=i+1;
 end
 subplot(221);
xtitle("radioactive decay","x-axis","y-axis");
xgrid(1);
plot(t,z);
//newton's law of cooling
K=1;
n0=5;
function F=f(m,n)
    F=-K*(n-n0);
endfunction
x0=input("enter initial state of x:")
y0=input("enter y0 at x0:");
xn=input("last value of x:")
h=input("h:")
a=1e-5;
y=y0;
i=1;

for x=x0:h:xn-h
    E=1.5*a
    f1=f(x,y);
    yc=y+h*f1;
    
    while E>a
        yp=yc;
        yc=y+h*(f1+f(x+h,yp))/2;
        E=abs(yp-yc);
    end;
      y=yc;
      z(i)=yc;
      t(i)=x;
     i=i+1;
 end
 subplot(222);
 xtitle("newtons of cooling","x-axis","y-axis");
 xgrid(1);
plot(t,z);
//discharging equation of RC circuit
R=200000;
C=10e-6;
function F=f(m,n)
    F=-n/(R*C);
endfunction
x0=input("enter initial state of x:")
y0=input("enter y0 at x0:");
xn=input("last value of x:")
h=input("h:")
a=1e-5;
y=y0;
i=1;

for x=x0:h:xn-h
    E=1.5*a
    f1=f(x,y);
    yc=y+h*f1;
    
    while E>a
        yp=yc;
        yc=y+h*(f1+f(x+h,yp))/2;
        E=abs(yp-yc);
    end;
      y=yc;
      z(i)=yc;
      t(i)=x;
     i=i+1;
 end
subplot(223);
xtitle("discharging of  RC circuit","x-axis","y-axis")
xgrid(1);
plot(t,z);
//outputs
//radioactive decay
//enter y0 at x0:1
//
//last value of x:10
//
//h:0.01

//newton's law of cooling
//enter initial state of x:0
//
//enter y0 at x0:100
//
//last value of x:10
//
//h:0.01

//discharging of RC circuit
//enter initial state of x:0
//
//enter y0 at x0:1
//
//last value of x:10
//
//h:0.01
//
//
