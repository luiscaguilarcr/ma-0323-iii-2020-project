%Hecho con un menu-metodo de gauss seidely jacobi
%Hecho por JUAN LOPEZ MONTEJO
%INSTITUTO TECNOLOGICO SUPERIOR DE LOS RIOS
function menujacobiyseidel=menujacobiyseidel()
format long
disp('================================================================')
disp('==POR FAVOR,INGRESE LA MATRIZ QUE SE LE PIDA DE FORMA ORDENADA==');
disp('================================================================')
e=input('CUANTAS ECUACIONES:');
A=input('INGRESE LA MATRIZ A:');
b=input('INGRSE LA MATRIZ b:');
disp('HOLA, POR CUAL METODO DESEA RESOLVER EL SISTEMA');
disp('========================');
disp('==        MENU        ==');
disp('==  1.- JACOBI        ==');
disp('==  2.- GAUSS-SEIDEL  ==');
disp('==  3.- Salir         ==');
disp('========================');
t=input('ELIJA SOLO UNA OPCION:');
m=input('CUANTAS ITERACIONES DESEA HACER:');

if t==1
    x0=zeros(1,e);k=0;norma=1;

while norma>0.00000001
    k=k+1;fprintf('%2d',k)
    for i=1:e
        suma=0;
        for j=1:e
            if i ~=j
                suma=suma+A(i,j)*x0(j);
            end
        end
        x(i)=(b(i)-suma)/A(i,i);fprintf('%10.4f',x(i))
    end
    norma=norm(x0-x);fprintf('%10.4f\n',norma)
        x0=x;
        if k>m
           
            break
        end 
 end
elseif t==2
   XO=zeros(1,e);X=XO; K=0;Norma=1;
   
while Norma>0.00001
    K=K+1; fprintf ('%d', K)
    for i=1:e
        suma=0;
        for j=1:e
            if i ~= j
                suma=suma+A(i,j)*X(j);
            end 
        end
        X(i)=(b(i)-suma)/A(i,i); fprintf ('%10.6f',X(i))
    end
    Norma=norm(XO-X); fprintf('%10.6f\n',Norma)
    X0=X;
    if K>m
        
        break 
    end 
end
    elseif t>3
        disp('POR FAVOR VERIFIQUE,LA OPCION QUE USTED ESCOGIO NO EXISTE.');
end
end