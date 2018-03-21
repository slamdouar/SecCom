function [ M ] = common_enc_exp( E, P )
%Using crt we may compute M if all R's are coprime and when all encryptions
%share the same exponent

if length(E)~=length(P)
    return
end
k=length(E);
x=crt(E,P);
M=nthroot(x,k);

end

