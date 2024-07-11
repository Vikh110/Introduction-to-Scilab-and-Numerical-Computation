//Suryakant Sharma 21730823
//program to solve the given linear equations by gauss seidal
//a1x+b1y+c1z=d1
//a2x+b2y+c2z=d2
//a3x+b3y+c3z=d3
clf()
for j=1:1:3
    a(j)=input("enter a"+string(j)+"=")
    b(j)=input("enter b"+string(j)+"=")
    c(j)=input("enter c"+string(j)+"=")
    d(j)=input("enter d"+string(j)+"=")
endn,
x(1)=0;
y(1)=0;
z(1)=0;
i=1;
f=1;
while(abs(f)>0.01)
    xi=x(i);
    x(i+1)=(d(1)-(b(1)*y(i))-(c(1)*z(i)))/a(1);
    y(i+1)=(d(2)-(a(2)*x(i+1))-(c(2)*z(i)))/b(2);
    z(i+1)=(d(3)-(a(3)*x(i+1))-(b(3)*y(i+1)))/c(3);
    xf=x(i+1);
    yf=y(i+1);
    zf=z(i+1);
    i=i+1;
    f=xf-xi;
end;
disp(xf,yf,zf)
//output
//enter a1=12
//
//enter b1=3
//
//enter c1=-5
//
//enter d1=1
//
//enter a2=1
//
//enter b2=5
//
//enter c2=3
//
//enter d2=28
//
//enter a3=3
//
//enter b3=7
//
//enter c3=13
//
//enter d3=76
//
//
//   4.0001694
//
//   3.0001044
//
//   0.9990224
//
