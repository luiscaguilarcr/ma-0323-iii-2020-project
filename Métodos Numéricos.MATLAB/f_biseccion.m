function Y = f_biseccion (h, a, b, tol)
clc
f = inline(h);

c = 0;
n = 0;
MEP = (b-a)/2;
fprintf('\t n \t\ta \t\t c \t\t b \t\t MEP \n');

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

fprintf (' Raiz encontrada con una toleracia de %f: \n ', tol)
Y =c;
