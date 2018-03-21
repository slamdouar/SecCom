function [ phi ] = efficient_euler_totient( n )
%EFFICIENT EULER TOTIENT - compute phi more efficiently

f=unique(factor(n));
phi=n;

for i=1:length(f)
   phi=floor(phi*(1-1/f(i))); 
end
end

