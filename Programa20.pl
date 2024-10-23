% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que elimina n
%              elemento de una lista.
%              Se incluye una versión en python.
% ===============================================
%def elimina_elemento(lista, n):
%    # Verificar si n está dentro de los límites de la lista
%    if n < 0 or n >= len(lista):
%        print("Índice fuera de rango")
%        return lista
%    # Usar pop para eliminar
%    lista.pop(n)
%    return lista
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9]
%print(elimina_elemento(lista, 4))
% -------- Código en Prolog --------------------
% En caso de querer eliminar el primer elemento, accede directamente.
eliminar_n_elemento(1, [_ | Cola], Cola).
eliminar_n_elemento(N, [Cabeza | Cola], [Cabeza | Resto]) :-
    N > 1,
    N1 is N - 1,
    eliminar_n_elemento(N1, Cola, Resto).  % Manda a llamarse de nuevo, pero aumentando 1 mas la variable indice.

%-------------------------------------
% Ejemplo de uso:
%?- eliminar_n_elemento(3, [a, b, c, d, e], R).
%R = [a, b, d, e].