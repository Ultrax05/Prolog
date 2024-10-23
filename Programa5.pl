% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que revierte todos
%              los elementos de una lista.
%              Se incluye una versión en python.
% ===============================================
main :-
    revertir([a, b, c], R),
    write('El resultado es: '), write(R), nl.
% -------- Código en python ------------
%# Solo retorna la lista al reveces, con una función de python
%def tam(lista):
%    return list(reversed(lista))
%
%# Ejemplo de uso:
%lista = [1, 2, 3, 4]
%print(tam(lista)) 
% -------- Código en Prolog --------------------
%La lista vacía se revierte en una lista vacía.
revertir([], []).

% Agrega el primer elemento al final de la lista revertida del resto.
revertir([Cabeza|Cola], Revertida) :-
    revertir(Cola, RevertidaCola),    % Revertir el resto de la lista mediante recursividad
    append(RevertidaCola, [Cabeza], Revertida).  % Agregar la cabeza al final.
%-------------------------------------
%?- revertir([a, b, c], R).
%R = [c, b, a].
%
%?- revertir([], R).
%R = [].
