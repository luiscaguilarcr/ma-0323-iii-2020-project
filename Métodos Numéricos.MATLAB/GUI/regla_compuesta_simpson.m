function [answer] = regla_compuesta_simpson(fx, a, b, n)
    % Regla Compuesta de Simpson
    %
    % Uso: [A] = regla_compuesta_simpson(fx, funTemp, a, b, n)
    %
    %   fx      es la función
    %   a       es el valor numérico del intervalo A
    %   b       es el valor numérico del intervalo B 
    %   n       es el valor numérico de N
    
    f = inline(fx);
    h=(b-a)/n;

    for k=1:1:n
        x(k)=a+k*h;
        y(k)=f(x(k));
    end
    so=0;se=0;
    for k=1:1:n-1
        if rem(k,2)==1
            so=so+y(k); % Suma pares
        else
            se=se+y(k); % Suma impares
        end
    end

    % Aplica la formula de la RCS
    answer=h/3*(f(a)+f(b)+4*so+2*se);
end