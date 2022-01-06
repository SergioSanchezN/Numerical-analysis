a = 0;
b = 0;

for i = 1:6
    a = a + 1/3^i;
    a = round(a,3)
end

a

for i = 1:6
    b = b + 1/3^(7-i);
    b = round(b,3)
end

b
