function mp_prob5 (x)

n = 0:199;
x = input('Please enter a value as x(n): ');
y = linspace(1,200);

for i = 1:200
    if i == 1
        y(i) = -1.5.*(x(i)) + 2.*(x(i+1)) - 0.5.*(x(i+2));
    elseif ((1 < i) && (i < 200))
        y(i) = 0.5.*(x(i+1)) -0.5.*(x(i-1));
    elseif i == 200
        y(i) = 1.5.*(x(i)) - 2.*(x(i-1)) + 0.5.*(x(i-2));
    end
end

plot(n, x, '-r')
hold
plot(n, y, 'g')
legend('x(n)', 'y(n)')
grid on
xlim([0 199])