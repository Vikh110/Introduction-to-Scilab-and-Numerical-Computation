//Vishwas Khandelwal 17036567106
//program to print the prime numbers in a given range
a=input("enter initial no.")
l=input("enter last no.")
disp("prime nos. are:")
for i=a:1:l
    f=0;
    for j=2:1:i/2
        if(modulo(i,j)==0)then
            f=1;
         end;
     end;
     if(f==0)
         disp(i);
      end;
end;
//outputs
//enter initial no.32
//
//enter last no.40
//
//
// prime nos. are:
//
//   37.
