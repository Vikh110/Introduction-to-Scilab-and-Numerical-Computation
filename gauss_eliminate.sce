//Vishwas Khandelwal 17036567106
//program to solve the given linear equations by gauss elimination method
clear()
clf()
n=input("enter value of n:");
x=input("matrix for x:");
for k=1:1:n-1
    for i=k+1:1:n
        r=-x(i,k)/x(k,k);
            for j=k:1:n+1
                x(i,j)=r*x(k,j)+x(i,j)
            end;
     end;
    
end;
for i=n:-1:1
    y(i)=x(i,n+1)/x(i,i);
    if i<n then
        for j=1:1:n-i
            y(i)=y(i)-y(i+j)*x(i,i+j)/x(i,i);
        end;
    end;
end;
disp(y);
//output:
//enter value of n:3
//
//matrix for x:[3 -2 3 8;2 1 -1 1;4 -3 2 4]
//
//
//   1.
//   2.
//   3.

