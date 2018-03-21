function [ plaintext ] = decryption( C,d,n )
%Encript plaintext P using public keys e and n

plaintext=my_power_mod_n(C,d,n);
end