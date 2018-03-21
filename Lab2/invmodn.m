function [ inv ] = invmodn( a, b )
%INVMODN compute inverse of m mod n (using the extended gcd algorithm)

[ gcd, m, n ] = extended_gcd( a, b );

if m>0
    inv=m;
else %since if it's negative we must correct the result
    %by doing the modulo between negative inverse and b
    inv=mod(m,b);
end
end

