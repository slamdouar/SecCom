clear all
close all
clc

%% RSA key generations

%pick two large primes, get n and phi
p=13;
q=17;
n=p*q;
phi=(p-1)*(q-1);

%compute random public key (better a small number)
while 1==1
   e=randsample(30,1);
   if(my_gcd(e,phi)==1)
        break
   end
end

%compute private key
d=invmodn(e,phi);