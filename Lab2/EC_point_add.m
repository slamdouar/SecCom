function [ xr, yr ] = EC_point_add( xp, yp, xq, yq, n )
%EC point add - implements elliptic curve points addition

s=yq-yp;
sinv=invmodn(xq-xp,n);
s=mod(s*sinv,n);
y0=mod(yp-s*xp,n);
xr=mod(s^2-xp-xq,n);
yr=mod(-(s*xr+y0),n);
end