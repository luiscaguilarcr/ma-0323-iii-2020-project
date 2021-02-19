function [respuesta]=derivada(f)
    syms x h;
    respuesta=limit((f(x+h)-f(x))/h,h,0);
end