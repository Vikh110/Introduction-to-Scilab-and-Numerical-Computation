//Suryakant Sharma 21730823
//program for least square fitting
clc()
clf()
n=input("no. of enteries:")
x=input("enter x co ordinates   ")
y=input("enter y co ordinates   ")
xsum=sum(x);
ysum=sum(y);
xysum=sum(x.*y);
xsqsum=sum(x.*x);

m=(n*xysum-xsum*ysum)/(n*xsqsum-xsum*xsum);
c=(xsqsum*ysum-xsum*xysum)/(n*xsqsum-xsum*xsum);
disp(m,"slope");
disp(c,"intercept");
plot(x,y,'X')
plot2d(x,m*x+c)
xgrid(1)
xtitle("GOUYS METHOD CURVE")
xlabel("B^2(TESLA^2)----->")
ylabel("m(KG)----->")
//output
//no. of enteries:6
//
//enter x co ordinates   [1 2 3 4 5 6]
//
//enter y co ordinates   [3 7 9 12 17 22]
//
//
//  -1.1333333
//
//   3.6571429
