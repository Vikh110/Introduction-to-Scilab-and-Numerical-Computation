//Vishwas Khandelwal 17036567106
//program to solve differential equation of radioactive decay ,newton's law of cooling,discharging of RC circuit by euler method
clf()
h=0.01;
j=1;
K=1;
function p=k(m,n)
    p=-K*n;
endfunction;
a=input("enter initial state of x:");
y=input("enter initial state of y:");
v=input("enter last value of x:");
for i=a:h:v-h
    g=y+h*k(i,y);
    y=g;
    b(j)=y
    x(j)=i
    j=j+1
end;
subplot(221);
xtitle("radioactive decay by euler","x-axis","y-axis");
xgrid(2);
plot(x,b)
//newton's law of cooling
h=0.01;
j=1;
K=1;
function p=k(m,n)
    p=-K*(n-n0);
endfunction;
n0=5
a=input("enter initial state of x:");
y=input("enter initial state of y:");
v=input("enter last value of x:");
for i=a:h:v-h
    g=y+h*k(i,y);
    y=g;
    b(j)=y
    x(j)=i
    j=j+1
end;
subplot(222);
xtitle("newtons law of cooling by euler","x-axis","y-axis");
xgrid(1);
plot(x,b)
//discharging of RC circuit
h=0.01;
j=1;
R=200000;
C=10e-6;
function p=k(m,n)
    p=-n/(R*C);
endfunction;

a=input("enter initial state of x:");
y=input("enter initial state of y:");
v=input("enter last value of x:");
for i=a:h:v-h
    g=y+h*k(i,y);
    y=g;
    b(j)=y
    x(j)=i
    j=j+1
end;
subplot(223);
xtitle("discharging of RC circuit by euler","x-axis","y-axis");
xgrid(1);
plot(x,b)

//output:
//radioactive decay
//enter initial state of x:0
//
//enter initial state of y:1
//
//enter last value of x:10

//newton's law of cooling
//enter initial state of x:0

//enter initial state of y:100

//enter last value of x:10

//discharging of RC circuit

//enter initial state of x:0

//enter initial state of y:1

//enter last value of x:10




