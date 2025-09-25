% Question 1
h = 0.4; % change to 0.2 for part b
X = 2;
N = round(X/h);

x = zeros(1,N+1); 
y = zeros(1,N+1); 

x(1) = 0; 
y(1) = 2; 

for i = 1:N 
  x(i+1) = x(i) + h; 
  y(i+1) = y(i) + h*(5*x(i) + y(i));
end

disp(y(N+1));

%Question 3
% h = 0.4
h = 0.4;
X = 2;
N = round(X/h);

x = zeros(1,N+1); 
y = zeros(1,N+1); 

x(1) = 0; 
y(1) = 2; 

for i = 1:N 
  x(i+1) = x(i) + h; 
  y(i+1) = y(i) + h*(5*x(i) + y(i));
end

x1 = x;
y1 = y;

% h = 0.2
h = 0.2;
X = 2;
N = round(X/h);

x = zeros(1,N+1); 
y = zeros(1,N+1); 

x(1) = 0; 
y(1) = 2; 

for i = 1:N 
  x(i+1) = x(i) + h; 
  y(i+1) = y(i) + h*(5*x(i) + y(i));
end

x2 = x;
y2 = y;

% h = 0.1
h = 0.1;
X = 2;
N = round(X/h);

x = zeros(1,N+1); 
y = zeros(1,N+1); 

x(1) = 0; 
y(1) = 2; 

for n = 1:N 
  x(n+1) = x(n) + h; 
  y(n+1) = y(n) + h*(5*x(n) + y(n));
end

yExact = -5*x - 5 + 7*exp(x);

plot(x,yExact,'w',x,y,'r',x1,y1,'b',x2,y2,'g');
title('Raadhikka Gupta, 400557687');
legend('Exact Solution','h=0.1','h=0.2','h=0.4','Location','NorthWest');
xlabel('x'); 
ylabel('y');

% Question 4
h = 0.01;
X = 7;
N = round(X/h);

x = zeros(1,N+1);
y = zeros(1,N+1);

x(1) = 0;
y(1) = 4.29;

for i = 1:N
    x(i+1) = x(i) + h;
    dydx = -y(i) / sqrt(4.3^2 - y(i)^2);
    y(i+1) = y(i) + h*dydx;
end

plot(x,y,'b');
title('Raadhikka Gupta, 400557687');
xlabel('x'); 
ylabel('y');