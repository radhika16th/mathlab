% Question 1. a)
h = 0.5;
X = 3;
N = round(X/h);

t = zeros(1,N+1);
T = zeros(1,N+1);

t(1) = 0;
T(1) = 33;

for i = 1:N
  t(i+1) = t(i) + h;
  T(i+1) = T(i) + h*(-17/10 * (T(i)-21));
end

T(end)

% Question 1. b)
h = 0.2;
X = 3;
N = round(X/h);

t = zeros(1,N+1);
T = zeros(1,N+1);

t(1) = 0;
T(1) = 33;

for i = 1:N
  t(i+1) = t(i) + h;
  T(i+1) = T(i) + h*(-17/10 * (T(i)-21));
end

T(end)

% Question 3
clear;
t_ex = @(t) 21 + 12*exp(-17/10*t);
N = 15;
max_err = 100;

while max_err >= 0.08772
    N = N+1;
    X = 3;
    h = X/N;
    
    t = zeros(1,N+1);
    T = zeros(1,N+1);
    
    t(1) = 0;
    T(1) = 33;
    
    for i = 1:N
      t(i+1) = t(i) + h;
      T(i+1) = T(i) + h*(-17/10 * (T(i)-21));
    end

    max_err = max(abs(T- t_ex(t)));
end

disp(N);

% Question 4
clear;

N = 131;
X = 5;
h = X/N;

t = linspace(0,5,N+1);
g = 21 + 10*sin(10./(t.^2 + 0.5));

T = zeros(1, N+1);

t(1) = 0;
T(1) = 33;

for n = 1:N
    T(n+1) = T(n) + h*(-17/10 * (T(n)-g(n)));
end

plot(t, T, 'b', t, g, 'r', 'LineWidth', 1.5);
xlabel('Time (h)');
ylabel('Temperature (?C)');
title('Raadhikka Gupta, 400557687');
legend('T(t)', 'g(t)', 'location', 'southeast');
