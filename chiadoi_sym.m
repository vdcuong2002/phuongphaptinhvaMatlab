function [X, k] = chiadoi_sym(f, a, b, ep, Nmax, type)
format long
k = 0;
sodau = a;
socuoi = b;
while (abs(sodau - socuoi)/(2^(k + type)) > ep)&&(k < Nmax)
    c = (a + b)/2;
    k = k + 1;
    fc = double(subs(f,c));
    if fc == 0
        X = c;
        return;
    elseif fc*double(subs(f,a)) < 0
        b = c;
    else
        a = c;
    end
end
X = [a, b, c];
end
