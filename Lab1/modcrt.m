function [ x ] = modcrt( a, b )
%UNTITLED20 Summary of this function goes here
%   Detailed explanation goes here
%https://crypto.stackexchange.com/questions/2575/chinese-remainder-theorem-and-rsa/41961#41961
factorsn=factor(b);

x=crt(mod(a,factorsn),factorsn);

end

