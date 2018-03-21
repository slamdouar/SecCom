% https://crypto.stackexchange.com/questions/2575/chinese-remainder-theorem-and-rsa/41961#41961

function [ plaintext ] = decryption_crt( C, d, p, q )
%RSA decryption via CRT
n=p*q;
factorsn=factor(n);

crt(mod(C,factorsn),factorsn)
end

