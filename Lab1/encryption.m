function [ cipher ] = encryption( P,e,n )
%Encript plaintext P using public keys e and n

cipher=my_power_mod_n(P,e,n);
end

