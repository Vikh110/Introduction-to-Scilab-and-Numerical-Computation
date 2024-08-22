//Vishwas Khandelwal 17036567106
//to find the roots of given quardatic equation
clf()
clc
a=input("enter for a")
b=input("enter for b")
c=input("enter for c")
d=b^2-4*a*c;
if d>0 then
    r1=((-b)+sqrt(d))/(2*a);
    r2=((-b)-sqrt(d))/(2*a);
    disp("roots are distinct"+string(r1)+"and"+string(r2))
elseif d==0 then
    r1=(-b)/(2*a);
    r2=r1;
    disp("roots are equal"+string(r1)+"and"+string(r2))
else d<0
    r1=((-b)+%i*sqrt(-d))/(2*a);
    r2=((-b)-%i*sqrt(-d))/(2*a);
    disp("roots are complex"+string(r1)+"and"+string(r2))
    end




//enter for a3

//enter for b5

//enter for c7


 //roots are complex-0.8333333+%i*1.2801910and-0.8333333-%i*1.2801910
 
 
// enter for a1

//enter for b-2

//enter for c1


// roots are equal1and1

//enter for a1

//enter for b5

//enter for c1


// roots are distinct-0.2087122and-4.7912878
