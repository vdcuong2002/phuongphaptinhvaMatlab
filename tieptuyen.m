function [X, k, saiso, xo, d] = tieptuyen(f, a, b, ep, Nmax, type)
format long
if double(subs(f,a))*double(subs(diff(f,2),a))>0
    x0=a; xo = a; d = b;
else
    x0=b; xo = b; d = a;
end

M2=max(double(abs(subs(diff(f,2),a:0.0001:b))));
m1=min(abs(subs(diff(f),a)),abs(subs(diff(f),b)));

x1=x0-double(subs(f,x0))/double(subs(diff(f),x0));
k=1;

if type == 0
    saiso = abs(double(subs(f, x1)/m1));
else
    saiso = abs(double(M2/(2*m1)*(x1-x0)^2));
end
while (saiso > ep) && (k < Nmax)
    x0=x1;
    x1=x0-double(subs(f,x0))/double(subs(diff(f),x0));
    k=k+1;
    if type == 0
        saiso = abs(double(subs(f, x1)/m1));
    else
        saiso = abs(double(M2/(2*m1)*(x1-x0)^2));
    end
end
X = [x1, x0];
end