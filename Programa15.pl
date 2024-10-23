% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que duplica los
%              elementos de una lista n veces.
%              Se incluye una versión en python.
% ===============================================
%def n_veces(lista, n):
%    resultado = []
%    for elemento in lista:
%        for _ in range(n):  # Repetir n veces
%            resultado.append(elemento)
%    return resultado
%
%# Ejemplo de uso
%lista = [1, 4, 6]
%print(n_veces(lista, 3))
%
% -------- Código en Prolog --------------------
%En caso de que es vacio imprime lista vacia.
n_veces(_, [], []).

n_veces(N, [Cabeza | Cola], Resultado) :-
    repite(Cabeza, N, SubLista),
    n_veces(N, Cola, RestoResultado), 
    append(SubLista, RestoResultado, Resultado).  % Une las sublistas para formar el resultado final.

repite(_, 0, []).  % Caso base: si el conteo es 0, devuelve una lista vacía.

repite(Elemento, Conteo, [Elemento | Resto]) :-
    Conteo > 0,  % Asegurarse de que el conteo sea positivo.
    NuevoConteo is Conteo - 1,  % Disminuye el conteo.
    repite(Elemento, NuevoConteo, Resto).  % Recurre para construir la lista.

%-------------------------------------
% Ejemplo de uso:
%?- n_veces(3, [a, b, c], R).
%R = [a, a, a, b, b, b, c, c, c].



