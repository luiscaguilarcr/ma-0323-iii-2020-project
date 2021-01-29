%Menú
user_choice = menu ('Proyectoi metodos numericos','Metodos Newton','Trazor cubico','Regla compuesta de Simpson', 'Determinante de una matriz', 'Gauss-Jordan', 'Informacion','Salir' );

switch user_choice 
    case 1 % Metodos Newton
        disp("Opcion #1")
        
    case 2 % Trazor cubico
        disp("Opcion #2")
        
    case 3 % Regla compuesta de Simpson
        disp("Opcion #3")
        
    case 4 % Determinante de una matriz
        disp("Opcion #4")
        
    case 5 % Gauss-Jordan
        disp("Opcion #5")
        
    case 6 % Informacion
        disp("Opcion #6")
        
    case 7 % Salir
        warndlg('Fin del programa')
        beep
        beep
end