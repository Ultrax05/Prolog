% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que divide una
%              lista a partir de n elemento.
%              Se incluye una versión en python.
% ===============================================
%def div_lista(lista, n):
%    primera_parte = lista[:n] 
%    segunda_parte = lista[n:] 
%    return primera_parte, segunda_parte
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%a, b = div_lista(lista, 3)
%print(a)
%print(b) 
% -------- Código en Prolog --------------------
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




