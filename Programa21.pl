% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que inserte un
%              elemento en n posicion de la lista.
%              Se incluye una versión en python.
% ===============================================
%def insertar_n_posicion(lista, elemento, n):
%    # Verificar si n esta dentro de los límites de la lista
%    if n < 0 or n > len(lista):
%        print("Índice fuera de rango")
%        return lista
%    
%    lista.insert(n, elemento)
%    return lista
%
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%print(insertar_n_posicion(lista, 9, 4))
% -------- Código en Prolog --------------------
main :-
    insertar_posicion(2, x, [a, b, c, d], R),
    write('[a, b, c, d]:'), write(R), nl.
% Similar al anterior programa, cuando es la primera posicion en la que ingresara el elemento.
insert_posicion(1, Elemento, Lista, [Elemento | Lista]).  % Insertar al inicio.
insert_posicion(N, Elemento, [Cabeza | Cola], [Cabeza | Resto]) :-
    N > 1,
    N1 is N - 1,
    insert_posicion(N1, Elemento, Cola, Resto).  % Funcion recursiva para insertar en el resto de la lista.

%-------------------------------------
% Ejemplo de uso:
%?- insertar_en_posicion(2, x, [a, b, c, d], R).
%R = [a, x, b, c, d].
