% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que extraiga n elementos 
%              aleatorios de un rango de k hasta l.
%              Se incluye una versión en python.
% ===============================================
%import random
%def extraer_aleatorios(k, l, n):
%    # Verificar que n no sea mayor que el tamaño del rango
%    if n > (l - k + 1):
%        print("No se puede extraer más elementos que los disponibles en el rango.")
%        return []
%    rango = list(range(k, l + 1))
%    numeros_aleatorios = random.sample(rango, n)
%    return numeros_aleatorios
%
%# Rango de ejemplo
%k = 5  # Inicio del rango
%l = 15  # Fin del rango
%n = 4  # Cantidad de números aleatorios a extraer
%print(extraer_aleatorios(k, l, n))
% -------- Código en Prolog --------------------
% Importa la biblioteca de numeros aleatorios.
:- use_module(library(random)).

main :-
    extraer_aleatorios_rango(3, 1, 10, R),
    write('3 del 1 al 10 :'), write(R), nl.

extraer_aleatorios_rango(N, K, L, Resultado) :-
    K =< L,  % Asegura que K sea menor o igual que L.
    findall(X, between(K, L, X), Lista),  % Genera una lista de números entre K y L.
    length(Resultado,N),
    random_permutation(Lista, Mezclada),
    append(Resultado,_,Mezclada).
%-------------------------------------
% Ejemplo de uso:
%?- extraer_aleatorios_rango(3, 1, 10, R).
%R = [5, 1, 8].
