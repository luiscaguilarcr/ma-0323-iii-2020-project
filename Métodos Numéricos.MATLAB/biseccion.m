%Biseccion corre el metodo de biseccion
%este metodo para la funcion "f"
%un maximo de iteracciones "Iter"
fprintf('Método de Bisección\n')
f=input('Ingrese la función f(x): ','s')
f=inline(f);
%f(x)= evalin(symengine,f);
a=input('Ingrese un extremo del intervalo:\n')
imgA=f(a); %evalua la imagen a
b=input('Ingrese un extremo del intervalo:\n')
imgB=f(b);
Tole=input('Ingrese la tolerancia esperada:\n')
Iter=input ('Ingrese el numero de iteraciones esperada:\n')
while(imgA>0 && imgB>0 || imgB<0 && imgA<0)
    fprintf(2,'ERROR, las imagenes son de igual signo\n')
    a=input('Ingrese un extremo del intervalo:\n')
    b=input('Ingrese un extremo del intervalo:\n')
    imgA=f(a); %evalua la imagen a
    imgB=f(b); %evalua la imagen a    
end
FA=f(a);
for i=1:Iter
    p= a+(b-a)/2;
    FP=f(p);    
    if FP==0 || (b-a)/2<Tole %revise la imagen
        resp=p;
        fprintf('P:')
        disp (vpa(resp,10))
        numiter=['Número de iteracciones: ', num2str(i)];
        disp(numiter)
        return;
    end
    if FA*FP>0
        a=p;
        FA=FP;
    else b=p;
    end    
end
fallo=['fallo despues de ', num2str(Iter),'iteraccion']



