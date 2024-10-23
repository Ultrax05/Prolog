% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina 
%              la cantidad de elementos de una lista.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
%# Solo retorna el tamaño mediante una función de python
%def tam(lista):
%    return len(lista)
%
%# Ejemplo de uso:
%lista = [1, 2, 3, 4]
%print(tam(lista))  # Esto imprimirá 4
% -------- Código en Prolog --------------------
main :-
    longitud([1, 2, 3], N),
    write('El resultado es: '), write(N), nl.
% Cuando la lista está vacía, el número de elementos es 0.
longitud([], 0).

% Recore la lista entera, pero cada vez que recorre un elemento, reduce la lista y aumenta la variable que contabiliza el tamaño
longitud([_|Resto], N) :-
    longitud(Resto, N1),    % Cuenta los elementos en el resto de la lista.
    N is N1 + 1.            % Suma 1 al resultado de la cuenta recursiva.
%-------------------------------------
% Ejemplo de uso:
%?- longitud([1, 2, 3], N).
%N = 3.
%
%?- longitud([], N).
%N = 0.
