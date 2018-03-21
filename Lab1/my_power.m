function [ res ] = my_power( x, m )
%Fast exponentiation via log 2 factors extraction.

if m == 0;
    res=1;
    return
elseif m == 1;
    res=x;
    return;
end

i=0;
exp=[];
j=1;
res=1;
p=0;
if m<0
   p=1; 
   m=m*-1; 
end
temp=m;

%Extract binary vector
while temp~=0;
    if mod(temp,2) == 1
       exp(j)=i;
       j=j+1;
    end
    temp=floor(temp/2);
    i=i+1;
end

%Compute result using binary vector entries to optimize
%execution speed
for i=1:length(exp)
    res = res*x^(2^exp(i));
end

if p~=0
    res=1/res
end
    
end


