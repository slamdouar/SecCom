function [ d2 ] = common_modulus_2( e1, e2, d1, R )
%Common modulus attack 2 - knowing e1, d1 and e2 we can easily derive the
%encryption generation algorithm

F=my_gcd(e2, d1*e1-1);
C=(d1*e1-1)/F;
if my_gcd(C,e2)==1
   [gcd, m, n]=extended_gcd(e2, C)
   if m>0
        d2=m;
   else
       phi=efficient_euler_totient(R);
       d2=mod(m,phi);
   end
   
else
    wanring 'game over'
end
end

%% Test attempted with e1=11, e2=23, d1=35, d2=167, R=221
%% Test attempted with aforementioned values and Plaintext=123