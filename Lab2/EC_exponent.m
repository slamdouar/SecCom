function [ xr, yr ] = EC_exponent( a, exp, xp, yp, n )
%EC exponent computes point (xp,yp) exponentiation inside a Galois Field n

ndouble=floor(exp/2);
nadd=mod(exp,2);
xtemp=xp;
xtemp2=xp;
ytemp=yp;
ytemp2=yp;

for i=1:exp
    if (xtemp==xtemp2) && (ytemp==ytemp2)
        [xtemp2, ytemp2]=EC_point_double(a, xtemp, ytemp, n);
        xtemp=xtemp2;
        ytemp=ytemp2;
    else
        if (xtemp==xtemp2) && (ytemp==-ytemp2)
            xtemp2=xtemp;
            ytemp2=NaN;
            xtemp=xtemp2;
            ytemp=ytemp2;
        elseif (isnan(ytemp2))
                ytemp2=ytemp;
                xtemp2=xtemp;
        else
            [xtemp, ytemp]=EC_point_add(xtemp, ytemp, xp, yp, n);
            xtemp=xtemp2;
            ytemp=ytemp2;
        end
    end
   
end

xr=xtemp;
yr=ytemp;
end