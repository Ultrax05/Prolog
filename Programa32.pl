% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que determine si un par de
%              numeros son coprimos.
%              Se incluye una versión en python.
% ===============================================
%def mcd(a, b):
%    while b != 0:
%        a, b = b, a % b
%    return a
%
%def coprimos(a, b):
%    # Si el MCD de los dos números es 1, entonces son coprimos
%    return mcd(a, b) == 1
%
%# Ejemplo de uso
%A = 8  # A
%B = 9  # B
%
%if coprimos(A, B):
%    print(A," y ",B," son coprimos.")
%else:
%    print(A," y ",B," no son coprimos.")
% -------- Código en Prolog --------------------
% Los numeros A y B son coprimos si su MCD es 1.
coprimos(A, B) :-
    mcd(A, B, 1).

% Calcula el maximo comun divisor de A y B.
mcd(A, B, Resultado) :-
    A > 0, B > 0,           % Asegura que A y B sean positivos.
    euclides(A, B, Resultado).

% Implementa el algoritmo de Euclides para determinar el mcd.
euclides(A, 0, A).         % Si B es 0, el MCD es A.
euclides(A, B, Resultado) :-
    B > 0,                  % Asegura que B sea positivo.
    R is A mod B,           % Calcula el residuo de A dividido por B.
    euclides(B, R, Resultado). % Llama recursivamente con B y el residuo.
%-------------------------------------
% Ejemplo de uso:
%?- coprimos(9, 28).
%true.
%?- coprimos(12, 18).
%false.














