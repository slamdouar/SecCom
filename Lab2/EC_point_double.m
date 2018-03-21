function [ xr, yr ] = EC_point_double( a, xp, yp, n )
%EC point double doubles the input points 
s=3*xp^2+a;
sinv=invmodn(2*yp,n);
s=mod(s*sinv,n);
y0=mod(yp-s*xp, n);
xr=mod(s^2-2*xp,n);
yr=mod(-(s*xr+y0),n);
end

