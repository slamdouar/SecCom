function [ res ] = my_power_mod_n( x, m , n )
%MY POWER MOD N Computes efficiently the power
% of x^m mod n
d=1;
if m<0
    x=invmodn(x,n);
    m=abs(m);
end

while m~=0;
    while mod(m,2) == 0;
        m=m/2;
        x=mod(x*x,n);
    end
    m=m-1;
    d=mod(d*x,n);
end

res=d;


% bin=dec2bin(abs(m));
% d=1;
% 
% if m == 0
%     res=mod(1,n);
%     return
% else
%     x=invmodn(x,n);
% end
% 
% %for i=length(bin):-1:1
% for i=1:length(bin)
%     d=mod(d*d,n);
%     if bin(i) == dec2bin(1)
%         d=mod(d*x,n);
%     end
% end
% 
% res=d;
