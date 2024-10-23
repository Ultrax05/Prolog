% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que determina los factores
%              primos de un numero entero.
%              Se incluye una versión en python.
% ===============================================
%def factores_primos(n):
%    factores = []
%    while n % 2 == 0:
%        factores.append(2)
%        n //= 2
%    # Probar con números impares a partir de 3
%    divisor = 3
%    while divisor * divisor <= n:
%        while n % divisor == 0:
%            factores.append(divisor)
%            n //= divisor
%        divisor += 2  # Solo se prueba con números impares
%    # Si n es mayor que 2, es un número primo
%    if n > 2:
%        factores.append(n)
%    return factores
%
%# Ejemplo de uso
%numero = 72
%print("Los factores primos de ",numero," son: ",factores_primos(numero))
% -------- Código en Prolog --------------------
% En el caso que el numero sea 1, no tiene factores primos
factores_primos(1, []).
factores_primos(N, [F | Factores]) :-
    N > 1,
    menor_factor(N, F),     % Encuentra el menor factor primo de N.
    N1 is N // F,           % Divide N por su menor factor primo.
    factores_primos(N1, Factores).  % Llama recursivamente.

menor_factor(N, F) :-
    menor_factor(N, 2, F).  % Empieza buscando desde 2 que es el primer numero primo.

menor_factor(N, F, F) :-
    N mod F =:= 0.          % Si F divide a N exactamente, F es el menor factor primo.
menor_factor(N, F, R) :-
    F * F =< N,             % Solo comprueba hasta la raíz cuadrada de N.
    F1 is F + 1,            % Incrementa F para probar el siguiente número.
    menor_factor(N, F1, R). % Llama recursivamente hasta encontrar el menor factor.
%-------------------------------------
%?- factores_primos(60, Factores).
%Factores = [2, 2, 3, 5].
%?- factores_primos(97, Factores).
%Factores = [97].
