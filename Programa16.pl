% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que elimina cada
%              n elementos de una lista.
%              Se incluye una versión en python.
% ===============================================
%def elimina_n_elemento(lista, n):
%    resultado = []
%    for i in range(len(lista)):
%        if (i + 1) % n != 0:
%            resultado.append(lista[i])
%    return resultado
%
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%print(elimina_n_elemento(lista, 3))
% -------- Código en Prolog --------------------
main :-
    eliminar_n_esimo(2, [a, b, c, d, e, f, g], R),
    write('[a, b, c, d, e, f, g]'), write(R), nl.
% Caso donde esta vacia la lista, regresa una lista vacia
eliminar_n_esimo(_, [], []).  

% Llama a la función auxiliar con el contador inicial en 1.
eliminar_n_esimo(N, Lista, Resultado) :-
    eliminar_n_esimo(N, 1, Lista, Resultado).  

% Si la lista esta vacia, la lista resultante también está vacía.
eliminar_n_esimo(_, _, [], []).  

eliminar_n_esimo(N, Pos, [_ | Cola], Resultado) :-
    Pos mod N =:= 0,  % Si la posicion actual es multiplo de N, elimina el elemento.
    NuevaPos is Pos + 1,
    eliminar_n_esimo(N, NuevaPos, Cola, Resultado).

eliminar_n_esimo(N, Pos, [Cabeza | Cola], [Cabeza | Resultado]) :-
    Pos mod N =\= 0,  % Si la posición actual no es multiplo de N, no elimina el elemento.
    NuevaPos is Pos + 1,
    eliminar_n_esimo(N, NuevaPos, Cola, Resultado).

%-------------------------------------
% Ejemplo de uso:
%?- eliminar_n_esimo(3, [a, b, c, d, e, f, g], R).
%R = [a, b, d, e, g].




