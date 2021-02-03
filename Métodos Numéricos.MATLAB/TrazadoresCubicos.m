function [a,b,c,d]=TrazadoresCubicos
x = [2 4 5 8 10];
y = [5 6 9 5 4];
u = 1;
v = 0;
z = [2:0.01:10];
%u,v son las pendientes de los extremos 
n = length(x);
clear A B C D;
if n <4
   return
end
for i= 1:n-1
    h(i)= x(i+1)-x(i);
end

B(1) = -2*h(1)/6;
C(1) = -h(1)/6;
D(1) = u-(y(2)-y(1))/h(1);
for i=2:n-1
    A(i)= h(i-1);
    B(i)= 2*(h(i-1)+h(i));
    C(i)= h(i);
    D(i)= 6*((y(i+1)-y(i))/h(i)-(y(i)-y(i-1))/h(i-1));
end
A(n) = h(n-1)/6;
B(n) = h(n-1)/3;
D(n) = v-(y(n)-y(n-1))/h(n-1);

for i = 1:n-1
    a(i) = (A:B:D(i+1)-A:B:D(i))/(6*h(i));
    b(i) = A:B:D(i)/2;
    c(i) = (y(i+1)-y(i))/h(i)-(2*h(i)*s(i)+h(i)*s(i+1))/6;
    d(i) = y(i);
end
if nargin==5    
  p=[];
  m=length(z);
  for k=1:m
      t=z(k);
      for i=1:n-1
         if t>=x(i) & t <=x(i+1)
             p(k) = a(i)*(t-x(i))^3+b(i)*(t-x(i))^2+c(i)*(t-x(i))+d(i);
         end
      end
  end
  if m>1
      k = m; i =n-1;
             p(k) = a(i)*(t-x(i))^3+b(i)*(t-x(i))^2+c(i)*(t-x(i))+d(i);
  end
  clear a b c d;
  a = p;
end
end
