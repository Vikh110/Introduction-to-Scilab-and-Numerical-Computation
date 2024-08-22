//Vishwas Khandelwal 17036567106
//program to arrange the given list of numbers in ascending. or descending order
disp("select among the following:")
disp("2-descending order","1-ascending order")
c=input("enter your choice")
n=input("enter the no. of numbers:")
disp("enter the list of numbers:")
for i=1:n
    x(i)=input(" ") 
end
select c
case 1 then
    for k=1:n-1
        for j=k+1:n
            if(x(k)>x(j)) then
                temp=x(j);
                x(j)=x(k);
                x(k)=temp;
             end;
          end;
     end;
disp("array in ascending order :")
for m=1:n
    disp(x(m));
end;
case 2 then
    for k=1:n-1
        for j=k+1:n
            if(x(k)<x(j)) then
                temp=x(j);
                x(j)=x(k);
                x(k)=temp;
            end;
        end;
     end;
disp("array in descending order:")
for m=1:n
    disp(x(m));
end;
end;
//outputs:

// select among the following:
//
// 1-ascending order
//
// 2-descending order
//enter your choice1
//
//enter the no. of numbers:5
//
//
// enter the list of numbers:
// 5 
//
// 9
//
// 2
//
// 1 
//
// 6
//
//
// array in ascending order :
//
//   1.
//
//   2.
//
//   5.
//
//   6.
//
//   9.
//
//select among the following:

// 1-ascending order
//
// 2-descending order
//enter your choice2
//
//enter the no. of numbers:5
//
//
// enter the list of numbe1rs:
// 5
//
// 4 
//
// 9  
//
// 8
//
// 1
//
//
// array in descending order:
//
//   9.
//
//   8.
//
//   5.
//
//   4.
//
//   1.
////
//
