% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que mueve n
%              elemento de una lista a la izquierda
%              k elementos.
%              Se incluye una versión en python.
% ===============================================
%def mov_izquierda(lista, n, k):
%    # Si n es mayor o igual que el tamaño de la lista, no tiene sentido moverlo
%    if n >= len(lista):
%        return lista
%    elemento = lista.pop(n)
%    nueva_pos = max(0, n - k)
%    lista.insert(nueva_pos, elemento)
%    return lista
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%print(mov_izquierda(lista, 2, 2))
% -------- Código en Prolog --------------------
main :-
    mover_izquierda(3, 2, [a, b, c, d, e, f], R),
    write('[a, b, c, d, e, f]:'), write(R), nl.
mover_izquierda(N, K, Lista, ListaResultado) :-
    extraer_porcion(1, N, Lista, PrimerosN),  % Extraer los primeros N elementos.
    eliminar_primeros_n(N, Lista, Resto),     % Eliminar los primeros N elementos de la lista.
    rotar_lista(K, PrimerosN, Rotados),       % Rotar los primeros N elementos K posiciones a la izquierda.
    append(Rotados, Resto, ListaResultado).   % Concatenar la lista rotada con el resto de la lista.

extraer_porcion(N, K, Lista, SubLista) :-
    extraer_desde(N, Lista, ListaDesdeN),
    extraer_hasta(K-N+1, ListaDesdeN, SubLista).

extraer_desde(1, Lista, Lista).
extraer_desde(N, [_ | Cola], Resultado) :-
    N > 1,
    N1 is N - 1,
    extraer_desde(N1, Cola, Resultado).

extraer_hasta(0, _, []).
extraer_hasta(_, [], []).
extraer_hasta(N, [Cabeza | Cola], [Cabeza | Resto]) :-
    N > 0,
    N1 is N - 1,
    extraer_hasta(N1, Cola, Resto).

eliminar_primeros_n(0, Lista, Lista).  % Si N es 0, devolver la lista completa. Ya que es el primero elemento, o sea el elemento mas a la izquierda posible
eliminar_primeros_n(N, [_ | Cola], Resto) :-
    N > 0,
    N1 is N - 1,
    eliminar_primeros_n(N1, Cola, Resto).

rotar_lista(0, Lista, Lista).  % No hay rotación.
rotar_lista(K, [Cabeza | Cola], Rotada) :-
    K > 0,
    append(Cola, [Cabeza], NuevaLista),  % Mueve el primer elemento al final.
    K1 is K - 1,
    rotar_lista(K1, NuevaLista, Rotada).

%-------------------------------------
% Ejemplo de uso:
%?- mover_izquierda(3, 2, [a, b, c, d, e, f], R).
%R = [c, a, b, d, e, f].






