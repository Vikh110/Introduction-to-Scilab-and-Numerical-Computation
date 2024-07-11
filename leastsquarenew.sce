//least square fitting
clf()
clc()
clear()
s=0
sq=0
sy=0
n=input(" no of readings ");
disp("enter x")
for i=1:n
    x(i)=input(" ")
    s=s+x(i)
    sq=sq+(x(i).*x(i))
end
disp("enter y")
for j=1:n
    y(j)=input(" ")
    sy=sy+y(j)
end
XY=sum(x.*y);
a=[n s; s sq];
b=[sy; XY];
p=inv(a);
c=p*b;
C=c(1);
m=c(2);
disp(m,C)
plot(x,y,'Xr')
plot2d(x,m*x+C)
