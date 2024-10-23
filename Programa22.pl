% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que tome los enteros
%              de un rango, y los agregue a otra lista.
%              Se incluye una versión en python.
% ===============================================
%def lista_rango(n, k):
%    # Crear una lista con los números enteros desde n hasta k
%    lista = list(range(n, k + 1))
%    return lista
%
%# Ejemplo de uso
%print(lista_rango(5, 10))
% -------- Código en Prolog --------------------
generar_rango(N, K, Lista) :-
    N =< K,               % Asegura que N sea menor o igual que K.
    findall(N, (
        between(N, K, N)  % Genera todos los números enteros entre N y K.
    ), Lista).           % Crea la lista con esos números.

%-------------------------------------
% Ejemplo de uso:
%?- generar_rango(3, 7, R).
%R = [3, 4, 5, 6, 7].