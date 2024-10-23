% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que extrae una
%              porcion de una lista a partir de
%              n elemento y hasta k elemento.
%              Se incluye una versión en python.
% ===============================================
%def porcion_lista(lista, n,k):
%    parte = lista[n:k]  # Desde n elemento hasta k elemento
%    return parte
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%a = porcion_lista(lista, 3, 6)
%print(a)
% -------- Código en Prolog --------------------
extraer_porcion(N, K, Lista, SubLista) :-
    extraer_desde(N, Lista, ListaDesdeN),  % Extraer la lista a partir del n-ésimo elemento.
    extraer_hasta(K-N+1, ListaDesdeN, SubLista).  % Extraer los elementos de n hasta k+1 elementos de la nueva lista.

extraer_desde(1, Lista, Lista).  % Si N es 1, la lista comienza desde el primer elemento.
extraer_desde(N, [_ | Cola], Resultado) :-
    N > 1,
    N1 is N - 1,
    extraer_desde(N1, Cola, Resultado).

extraer_hasta(0, _, []).  % Si se alcanzan 0 elementos, la lista resultante está vacía. Si la diferencia entre n y k es 0.
extraer_hasta(_, [], []).  % Si la lista está vacia, devolver una lista vacia.
extraer_hasta(N, [Cabeza | Cola], [Cabeza | Resto]) :-
    N > 0,
    N1 is N - 1,
    extraer_hasta(N1, Cola, Resto).
%-------------------------------------
% Ejemplo de uso:
%?- extraer_porcion(2, 5, [a, b, c, d, e, f, g], R).
%R = [b, c, d, e].





