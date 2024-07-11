clf;
clc;
clear;
function f=f(x)
    if x<0  then
        f=0;
    else
        f=1;
    end
endfunction
n=input("enter n")
l=input("enter l")
z=1;
a0=(1/(2*l))*(integrate('f(x)','x',-l,l))
disp(a0,"a0=")
for i=1:n
    a(i)=((1/l)*(integrate('f(x)*cos((i*%pi*x)/l)','x',-l,l)))
    b(i)=((1/l)*(integrate('f(x)*sin((i*%pi*x)/l)','x',l,l)))
end
for k=-2*l:0.01:2*l
    u=0;v=0;
    for j=1:n
        u=u+a(j)*cos(j*%pi*k/l);
        v=v+b(j)*sin(j*%pi*k/l);
    end
    r(z)=a0+u+v;
    h(z)=k
    z=z+1
end
plot(h,r)
