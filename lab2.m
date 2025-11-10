% Problem 1
[x y] = meshgrid(-3:0.1:3,-3:0.1:3);

b = (sin(2.*x.*y))./(x.^2 + y.^2 - 4.*x + 8.*y + 21);

Max=0;
[new_x ,new_y] = size(b);

for c = 1:new_x
    for d = 1:new_y
        if b(c,d)> Max
            Max = b(c,d);
            xindex = c;
            yindex = d;
        end
    end
end

x_val = x(xindex, yindex);
y_val = y(xindex, yindex);

disp([num2str(x_val), ', ', num2str(y_val)]);

% Problem 2
[x y] = meshgrid(-5:0.2:5,-5:0.2:5);

a = ones(size(x));
b = x.*(exp(-x.^2/10) + y - 7/2).*sin(x.^2/10 + 6);

aScaled = a./sqrt(a.^2+b.^2);
bScaled = b./sqrt(a.^2+b.^2);

quiver(x,y,aScaled,bScaled)

title('Direction Field');
xlabel('x');
ylabel('y');

% Problem 4
[x, y] = meshgrid(-2:0.2:2, 4:0.2:8);

a = ones(size(x));
b = (1/6).*y - exp(-7.*x);

aScaled = a ./ sqrt(a.^2 + b.^2);
bScaled = b ./ sqrt(a.^2 + b.^2);

x_exact = -2:0.005:2;
y_exact = (6/43).*exp(-7.*x_exact) + (252/43).*exp(x_exact./6);

quiver(x, y, aScaled, bScaled);
hold on;

plot(x_exact, y_exact, 'k', 'LineWidth', 2);
hold off;

xlim([-2 2]);
ylim([4 8]);
axis equal;
box on;

title('Raadhikka Gupta, 400557687');
xlabel('x');
ylabel('y');
