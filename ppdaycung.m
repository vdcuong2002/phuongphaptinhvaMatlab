function [X, k, saiso, xo, d]=ppdaycung(f, a, b, ep, Nmax, type)
format long
if subs(f,a)*subs(diff(f,2),a)<0
    x0=a; d=b; xo = x0;
else
    x0=b; d=a; xo = x0;
end
M1=max(abs(subs(diff(f),a)),abs(subs(diff(f),b)));
m1=min(abs(subs(diff(f),a)),abs(subs(diff(f),b)));
x1=x0-double(subs(f,x0))*(x0-d)/(double(subs(f,x0))-double(subs(f,d)));
k=1;
if type == 0
    saiso = abs(double(subs(f, x1)/m1));
else
    saiso = abs(double((M1-m1)/m1*abs(x1-x0)));
end
while (saiso > ep)&&(k < Nmax)
    x0=x1;
    x1=x0-double(subs(f,x0))*(x0-d)/(double(subs(f,x0))-double(subs(f,d)));
    k=k+1;
    if type == 0
        saiso = abs(double(subs(f, x1)/m1));
    else
        saiso = abs(double((M1-m1)/m1*abs(x1-x0)));
    end
end

X= [x1, x0];
end

