close all
clear all
clc

close all
clear all
clc

%% Setup

al=29; %Alice's public key
b=5; %Bob's public key
c=7; %Mallory's public key
%als=53; %Alice's secret key
%bs=77; %Bob's secret key
%cs=55; %Mallory's secret key

n=221; %Galois field order
a=1; %elliptic curve parameter
P=[2, 4]; %point

%% Public key between Mallory and Bob
[BMx,BMy]=EC_exponent(a, b, P(1), P(2), n);
[KBMx,KBMy]=EC_exponent(a, c, BMx, BMy, n);

xs=dec2bin(KBMx);
ys=dec2bin(KBMy);
KBM=[xs, ys(length(ys))];

%% Public key between Mallory and Alice
[AMx, AMy]=EC_exponent(a, b, P(1), P(2), n);
[KAMx, KAMy]=EC_exponent(a, b, AMx, AMy, n);

xs=dec2bin(KAMx);
ys=dec2bin(KAMy);
KAM=[xs, ys(length(ys))];

%% Alice sends a message to Bob, but Mallory intercepts it
M=15;
E=encryption(M, 

%% Alice computes shared key, checks that K corresponds
[xs, ys]=EC_exponent(a, al, Qbx, Qby, n);
xs=dec2bin(xs);
ys=dec2bin(ys);
%Key is computed by concatenation of xr with LSB of yr in order to 
%avoid amibguity between positive and negative y
Ka=[xs, ys(length(ys))]

%% Alice computes public key
[Qax, Qay]=EC_exponent(a, al, P(1), P(2), n);

%% Bob computes shared key, checks that K corresponds
[xs, ys]=EC_exponent(a, b, Qax, Qay, n);
xs=dec2bin(xs);
ys=dec2bin(ys);

%append ys's LSB to xs:
Kb=[xs, ys(length(ys))]