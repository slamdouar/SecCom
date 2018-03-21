function [ res ] = euler_totient( n )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

res=0;

for i=1:n
    if my_gcd(i,n) == 1
        res=res+1;
    end
end

end

