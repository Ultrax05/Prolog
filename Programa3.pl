% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que determina 
%              el n-esimo elemento de una lista.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
%# Caso base: cuando la lista tiene un solo elemento, ese es el último.
%def elemento(lista,n):
%    if len(lista) > 0:
%        return lista[(n-1)]
%    # Si tiene aunque sea 2 elementos, imprimirá un elemento
%    else:
%        return "Elementos insuficientes"
%
%# Ejemplo de uso:
%lista = [1, 2, 3, 4]
%print(elemento(lista,3))  # Esto imprimirá 3
%print(elemento(lista,1))  # Esto imprimirá 1
% -------- Código en Prolog --------------------
main :-
    n_esimo(2,[1,2,3,4], X).
    write('El resultado es: '), write(X), nl.
% Si el índice es 1, el primer elemento es el n-ésimo, ya que la siguiente función reduce el indice y la lista hasta llegar al elemento deseado.
n_esimo(1, [X|_], X).

% Reducir el índice y recorre la lista, en vez de acceder directamente al elemento, como en otros lenguales, sino que reduce la lista, toma el elemento que desea acceder y hasta que sea 1, repite recursivamente la función disminuyendo el tamaño de la lista y el indice.
n_esimo(N, [_|Resto], X) :-
    N > 1,               % Asegurarse de que N sea mayor que 1.
    N1 is N - 1,         % Reduce el índice.
    n_esimo(N1, Resto, X). % Llamada recursiva con la lista reducida.
%-------------------------------------
% Ejemplo de uso:
%?- esimo(6,[1, 2, 3, 4], X).
%false
%
%?- esimo(3,[1,2,3,4], X).
%X = 3.
%
%?- esimo(1,[1,2,3], X).
%x= 1.
