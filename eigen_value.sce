//Vishwas Khandelwal 17036567106
//program to diagonalise the given matrix
a=[4 5 6;2 3 4;3 4 5];
[c,d]=spec(a);
disp([c,d]);
m=inv(c);
p=m*a*c;
disp("diagonal matrix:")
disp(p);
//output
//0.7095589   0.7631755   0.4082483   11.744563   0.          0.       
//   0.4208183  -0.6434106  -0.8164966   0.          0.2554374   0.       
//   0.5651886   0.0598824   0.4082483   0.          0.          1.187D-15
//
// diagonal matrix:
//
//   11.744563  -6.723D-15  -6.344D-15
//  -3.797D-15   0.2554374   2.093D-15
//   3.631D-15  -1.448D-15  -3.626D-16
