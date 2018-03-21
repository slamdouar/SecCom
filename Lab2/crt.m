function [ x ] = crt( R, P )
%Chinese remainder theorem - accepts R and P and returns 
% a vector of solutions which satisfies:
%res(i)=r(i)mod p(i)

Ptot=prod(P);
x=0;
if length(R)~=length(P)
    warning 'Length mismatch!'
    return
end

for i=1:length(P)
    T(i)=invmodn(Ptot/P(i),P(i));
    x=mod(x+(Ptot/P(i))*R(i)*T(i),Ptot);
end


end

