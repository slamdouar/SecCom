function [ M ] = common_modulus_1( E1, E2, e1, e2, R )
%Common modulus attack - knowing that e1 and e2 are coprime we can easily
%derive M

[gcd, m, n]=extended_gcd(e1, e2);

if m>0
    temp1=my_power_mod_n(E1, m, R);
else
    temp1=invmodn(E1, R);
    temp1=my_power_mod_n(temp1, -m, R);
end

if n>0
    temp2=my_power_mod_n(E2, n, R);
else
    temp2=invmodn(E2, R);
    temp2=my_power_mod_n(temp2, -n, R);
end

M=mod(temp1*temp2,R);

end

%% first question: M=77
%% second question: M=680 - no inverse!
%% Test: M=123, R=221, e1=29, e2=25 ---> coprime! E1=106, E2=123, common modulus attack works!