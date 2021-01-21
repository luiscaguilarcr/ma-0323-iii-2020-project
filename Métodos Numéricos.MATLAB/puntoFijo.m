fprintf('Método del Punto Fijo\n\n');
f=input('Ingrese la función f(x): ','s');
x0=input('Ingrese el valor inicial:\n');
Tole=input('Ingrese la tolerancia esperada:\n');
Iter=input ('Ingrese el numero de iteraciones esperada:\n');

while( Tole < 0 || Tole > 1)%validación para que la tolerancia se encuentre entre 0 y 1
    fprintf(2,'ERROR, La tolerancia debe de ser entre 0 y 1 \n');
    Tole = input('Ingrese la tolerancia deseada\n');
end
cont=1;
x=x0;
while Iter>Tole
    g=eval(f);
    Iter=abs((g-x)/g);
    x=(vpa(g,100));
    cont=cont+1;
end
fprintf('La raiz exacta es: %g');
disp(vpa(g,15));
fprintf('Numero de iteraciones: %g',cont);
