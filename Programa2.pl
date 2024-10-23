% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina
%              el penultimo elemento de una lista.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
%# Caso base: cuando la lista tiene un solo elemento, ese es el último.
%def penultimo(lista):
%    if len(lista) >= 2:
%        return lista[1]
%    # Si tiene aunque sea 2 elementos, imprimirá un elemento
%    else:
%        return "Elementos insuficientes"
%
%# Ejemplo de uso:
%lista = [1, 2, 3, 4]
%print(penultimo(lista))  # Esto imprimirá 2
% -------- Código en Prolog --------------------

% Cuando la lista tiene dos elementos, el primero es el penúltimo.
penultimo([X, _], X).

% Recorre la lista eliminando la cabeza hasta llegar a dos elementos, igual que en el anterior programa, elimina hasta que sea valida en la primer opción.
penultimo([_|Resto], Penultimo) :-
    penultimo(Resto, Penultimo).
%-------------------------------------
% Ejemplo de uso:
%?- penultimo([1, 2, 3, 4], X).
%X = 3.
%
%?- penultimo([3,4], X).
%X = 3.
%
%?- penultimo([5], X).
%false.