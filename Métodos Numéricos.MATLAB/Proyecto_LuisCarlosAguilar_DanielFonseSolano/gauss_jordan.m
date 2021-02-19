function [R]=gauss_jordan(A)
    % Eleminación de Gauss-Jordan por pivoteo parcial
    %
    % Uso: [A] = gauss_jordan(A)
    %
    %   A   es la matriz a la que se le quiere aplicar gauss jordan
    %   R   es el resultado de la matriz A con gauss jordan
    
    [m,~]=size(A); %m= cantidad de columnas

    for j=1:m-1
        for z=2:m %Pivoteo parcial: se toma como pivote fila que tiene el mayor número
            if A(j,j)==0
                t=A(1,:);A(1,:)=A(z,:);
                A(z,:)=t;
            end    
        end    
        for i=j+1:m %Convertir los elementos por debajo de la diagonal principal en ceros
            A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
        end    
    end
    
    for j=m:-1:2 %Convertir los elementos por encima de la diagonal principal en ceros
        for i=j-1:-1:1
            A(i,:)=A(i,:)-A(j,:)*(A(i,j)/A(j,j));
        end
    end

    for s=1:m %Convertir los elementos de la diagonal principal en unos
        A(s,:)=A(s,:)/A(s,s);
    end
    
    R=A;
end