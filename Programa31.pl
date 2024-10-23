% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que determine el maximo
%              comun divisor de dos numeros.
%              Se incluye una versión en python.
% ===============================================
%def mcd(a, b):
%    while b != 0:
%        a, b = b, a % b
%    return a  # El MCD es el último valor de a
%
%# Ejemplo de uso
%A = 48  # Numero A
%B = 18  # Numero B
%print("El máximo común divisor de ",A," y ",B," es: ",mcd(A, B))
% -------- Código en Prolog --------------------
mcd(A, B, Resultado) :-
    A > 0, B > 0,           % Asegura que A y B sean positivos.
    euclides(A, B, Resultado).

% Funcion que ejecuta el algoritmo de euclides para determinar el MCD
euclides(A, 0, A).         % Caso donde B es 0, entonces el MCD es A.
euclides(A, B, Resultado) :-
    B > 0,                  % Asegura que B sea positivo.
    R is A mod B,           % Calcula el residuo de A dividido por B.
    euclides(B, R, Resultado). % Llama recursivamente con B y el residuo.
%-------------------------------------
%?- mcd(48, 18, R).
%R = 6.












