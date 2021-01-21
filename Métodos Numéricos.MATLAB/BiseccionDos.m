%Método de bisección

clear, cl 
h = imput ('Ingrese la función a analizar:');
f = inline(h);
a = input ('Ingrese el limite inferior del intervalo:');
b = imput ('Ingrese el limite superior:');
tol = imput ('Indique la toleracia deseada:');

c = 0;
n = 0;
MEP = (b-a)/2;
fprintf('\t n \t\ta \t\t b \t\t MEP \n');

while (MEP > tol)
    c= (a+b)/2;
    disp ( [ n , a , c , b , MEP ] )
    if ( f(a) * f(c)<0  )
        b = c ;
    else a = c;
    end 
    MEP = ( b - a ) / 2;
    n = n + 1;
end

fprint (' Raiz encontrada con una toleracia de %f: \n \t%f \n', tol, c)
