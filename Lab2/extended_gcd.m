function [ gcd, m, n ] = extended_gcd( a, b )
%Extended euclidean algorithm

% m, n, gcd
A=[1,0,a]; % step -2
B=[0,1,b]; % step -1
T=[0,0,0]; % current step - temp variable, not really necessary...

while 1==1
if B(3) == 0
   gcd=A(3); 
   m=A(1);
   n=A(2);
   warning 'No inverse'
   return
end

if B(3) == 1
    gcd=B(3);
    m=T(1);
    n=T(2);
    return
end
    Q=floor(A(3)/B(3));
    T=[A(1)-Q*B(1), A(2)-Q*B(2), A(3)-Q*B(3)];
    A=B;
    B=T;

end