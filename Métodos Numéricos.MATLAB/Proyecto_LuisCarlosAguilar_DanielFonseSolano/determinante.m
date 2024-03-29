function d = determinante(A)
    % Determinante de una matriz cuadrada
    %
    % Uso: [A] = gauss_jordan(A)
    %
    %   A   es la matriz a la que se le quiere aplicar el determinante
    %   d   es el resultado del determinate
    
    % Crea un vector vec cuyos valores son los números en el intervalo [1...n]
    vec=1:size(A,1);
    
    %
    for j=1:size(A,1)
        % Si la matriz es 1x1
        if size(A,1)==1
            % Devuelva el mismo valor que la matriz
            d=A;
        else
            % Indices en fila y columna pertenecientes al vector
            vecf=vec(vec~=1);
            vecc=vec(vec~=j);
            
            % Se implementa el algoritmo recursivo
            d(j)=((-1)^(1+j))*A(1,j)*determinante(A(vecf,vecc));
            
            % Suma todos los valores obtenidos en cada iteración del ciclo for
            d=sum(d);
        end
    end
end