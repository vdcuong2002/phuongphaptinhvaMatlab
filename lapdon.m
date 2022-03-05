function [X, k, saiso, q, x1] = lapdon(f, a, b, c, ep, Nmax, type)
b1y = diff(f);
q = max(abs(subs(b1y, a)), abs(subs(b1y, b)));
dem = 1;
pre_x = c;
now_x = subs(f, pre_x);
x1 = double(now_x);
deltadau = now_x - pre_x;
if type == 0
    saiso = abs((q^dem)*abs(deltadau))/(1-q);
end
if type == 1
    saiso = (q)*abs(now_x - pre_x) / (1-q);
end
while (saiso > ep && dem < Nmax)
    pre_x = now_x;
    now_x = double(subs(f, pre_x));
    dem = dem + 1;
    if type == 0
        saiso = abs((q^dem)*abs(deltadau))/(1-q);
    end
    if type == 1
        saiso = (q)*abs(now_x - pre_x) / (1-q);
    end
end
q = double(q);
saiso = double(saiso);
k = dem;
X = double([now_x pre_x]);

