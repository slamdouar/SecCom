function [ res ] = my_gcd( a, b )
%GCD function used to compute GCD
A=a;
B=b;

while B>0
    R=mod(A,B);
    A=B;
    B=R;
end
res=A;
end