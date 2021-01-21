function Lagrange
fprintf ('Polinomio de Lagragne \n');
X = input('Ingrese el valor de las Xs: ');
fprintf ('Sugerencia: En caso de usar decimales, favor ingrese los posibles valores de Y separados por puntos\n');
Y = input('Ingrese el valor de las Ys: ');
x = input('Ingrese el valor a interpolar: ');
[m n] = size(X);
resp = 0;
for k=1:n
    lg = 1;
    for j = 1:n
        if (j~=k)
            lg= lg*((x-X(j))/(X(k)-X(j)));
                 %Se crea el polinomio de acuerdo a los valores ingresados
        end 
    end
    %Se multiplica el polinomio por las debidas Y
    resp= resp + Y(k) * lg;
end
fprintf ('P(x)= %f \n' ,resp);
fprintf ('Fin del Algoritmo\n');
%Se grafica
x = X;
y = (Y);
plot(x,y);
hold on
grid on
end