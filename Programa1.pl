% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina 
%              el último elemento de una lista.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
% 	#Caso base: cuando la lista tiene un solo elemento, ese es el último.
% def ultimo(lista):
%   if len(lista) == 1:
%       return lista[0]
%   # Caso recursivo: recorre la lista eliminando la cabeza hasta llegar al último elemento.
%    else:
%       return ultimo(lista[1:])
%
%# Ejemplo de uso:
%lista = [1, 2, 3, 4]
%print(ultimo(lista))  # Esto imprimirá 4
% -------- Código en Prolog --------------------
sumar(X, Y, Resultado) :- Resultado is X + Y.

main :-
    sumar(3, 5, Resultado),
    write('El resultado es: '), write(Resultado), nl.
% Predicado my_last(X, List) que determina el último
% elemento X de la lista List.

ultimo([X], X).

% Recorre la lista eliminando el primer elemento hasta llegar al último elemento, de forma recursiva.
ultimo([_|Resto], Ultimo) :-
    ultimo(Resto, Ultimo).
%-------------------------------------
% Ejemplo de uso:
%?- ultimo([1, 2, 3, 4], X).
%X = 4.
%
%?- ultimo([5], X).
%X = 5.
%
%?- ultimo([], X).
%false.
