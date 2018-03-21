close all
clear all
clc

%% Setup

al=13; %Alice's secret key
b=7; %Bob's secret key
n=13; %Galois field order
a=32; %elliptic curve parameter
P=[2, 4]; %plaintext

%% Bob computes public key
[Qbx, Qby]=EC_exponent(a, b, P(1), P(2), n);

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