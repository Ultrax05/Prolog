% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que determina los factores
%              primos dentro de un rango.
%              Se incluye una versión en python.
% ===============================================
%def es_primo(numero):
%    if numero <= 1:
%        return False
%    for i in range(2, int(numero**0.5) + 1):
%        if numero % i == 0:
%            return False
%    return True
%
%def rango(n, k):
%    primos = []
%    for num in range(n, k + 1):
%        if es_primo(num):
%            primos.append(num)
%    return primos
%
%# Ejemplo de uso
%n = 10  # Inicio
%k = 30  # Fin
%print("Los números primos entre ",n," y ",k," son: ",rango(n, k))
% -------- Código en Prolog --------------------
primos_rango(N, K, Primos) :-
    findall(P, (between(N, K, P), es_primo(P)), Primos). % Encuentra todos los primos entre N y K.

% Determina si un número es primo.
es_primo(2).     % El 2 es primo por lo que no se evalua.
es_primo(N) :- 
    N > 2, 
    N mod 2 =\= 0,         % Los numeros pares mayores que 2 no son primos.
    \+ tiene_divisores(N, 3). % Verifica que no tenga divisores desde 3 en adelante.

% Verifica si N tiene divisores.
tiene_divisores(N, D) :- 
    D * D =< N, 
    (N mod D =:= 0 ; 
    D2 is D + 2,         % Solo prueba numeros impares como posibles divisores.
    tiene_divisores(N, D2)).
%-------------------------------------
%?- primos_rango(10, 30, Primos).
%Primos = [11, 13, 17, 19, 23, 29].
%?- primos_rango(50, 100, Primos).
%Primos = [53, 59, 61, 67, 71, 73, 79, 83, 89, 97].