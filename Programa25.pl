% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que extraiga n elementos 
%              aleatorios de un rango de k hasta l.
%              Se incluye una versión en python.
% ===============================================
%import random
%
%def revolver(lista):
%    lista_permutada = lista[:]  # Crear una copia de la lista original
%    random.shuffle(lista_permutada)  # Revolver los elementos de la lista de forma aleatoria
%    return lista_permutada
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5]
%print("Permutación aleatoria de la lista ",lista," : ",revolver(lista))
% -------- Código en Prolog --------------------
permutacion_aleatoria(Lista, Permutacion) :-
    revolver(Lista, Permutacion).

% Revuelve los elementos de una lista.
revolver([], []).
revolver(Lista, [Elem | Permutacion]) :-
    length(Lista, Len), % Obtiene el tamaño.
    random(0, Len, Index),  % Genera un indice aleatorio.
    nth0(Index, Lista, Elem), % Extrae el elemento en la posicion Index.
    eliminar_elemento(Lista, Elem, Resto), % Elimina el elemento de la lista original.
    revolver(Resto, Permutacion).

% Elimina el primer elemento coincidente de la lista.
eliminar_elemento([Elem | Cola], Elem, Cola). % Se elimina el elemento encontrado.
eliminar_elemento([X | Cola], Elem, [X | Resto]) :-
    eliminar_elemento(Cola, Elem, Resto).
%-------------------------------------
% Ejemplo de uso:
%?- permutacion_aleatoria([a, b, c], R).
%R = [c, a, b].
%?- permutacion_aleatoria([1, 2, 3, 4], R).
%R = [3, 1, 4, 2].