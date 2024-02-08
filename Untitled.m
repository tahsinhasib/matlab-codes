a = input('Enter function: ','s');
f = inline(a)
x(1) = input('first point: ');
x(2) = input('second point: ');

n = input('allowed error: ');

iter = 0;
for i = 3 : 100
    x(i) = x(i-1) - (f(x(i-1))) * ((x(i-1) - x(i-2))/ (f(x(i-1)) - f(x(i-2))));
    iter = iter + 1;
    if abs((x(i) - x(i-1))/x(i)) * 100 < n
        root = x(i)
        iter = iter
        break
    end
end
