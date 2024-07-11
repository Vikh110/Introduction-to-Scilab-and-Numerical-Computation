//exponatial
//y=a*e^b*x
clc()
clear()
scf(2)
n=input(" no of readings ");
disp("enter x")
for i=1:n
    x(i)=input(" ")
end
disp("enter y")
for j=1:n
    y(j)=input(" ")
end
Y=log(y)
X=x
s=sum(X)
sq=sum(X.*X)
sy=sum(Y)
pq=sum(X.*Y);
a=[n s; s sq];
b=[sy; pq];
p=inv(a);
c=p*b;
A=c(1);
B=c(2);
a=exp(A);
b=B
disp(A,B)
disp(a,b)
plot(x,y,'Xr')
plot2d(x,a*exp(b*x))
