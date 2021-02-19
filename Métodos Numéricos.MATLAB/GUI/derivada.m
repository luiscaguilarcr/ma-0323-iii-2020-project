function [derivada]=derivada(f)
syms x h;
derivada=limit((f(x+h)-f(x))/h,h,0);
end