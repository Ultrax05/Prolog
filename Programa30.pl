% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que determine si un numero
%              es primo.
%              Se incluye una versión en python.
% ===============================================
%def es_primo(numero):
%    # Los números menores o iguales a 1 no son primos
%    if numero <= 1:
%        return False
%    
%    # Comprobar divisores desde 2 hasta la raíz cuadrada del número
%    for i in range(2, int(numero**0.5) + 1):
%        if numero % i == 0:
%            return False  # El número tiene un divisor, por lo tanto no es primo
%    return True  # No se encontró ningún divisor, es primo
%
%# Número de ejemplo
%numero = 29
%if es_primo(numero):
%    print(numero,"es un número primo.")
%else:
%    print(numero,"no es un número primo.")
% -------- Código en Prolog --------------------
es_primo(N) :- 
    N > 1,                       % Asegura que N sea mayor que 1.
    \+ tiene_divisores(N, 2).    % Verifica que N no tenga divisores desde 2 hasta N-1.

tiene_divisores(N, Divisor) :- 
    Divisor * Divisor =< N,      % Solo comprueba hasta la raíz cuadrada de N.
    (N mod Divisor =:= 0;         % Comprueba si N es divisible por Divisor.
    Next is Divisor + 1,          % Incrementa el Divisor.
    tiene_divisores(N, Next)).    % Llama recursivamente con el divisor aumentado.
%-------------------------------------
% Ejemplo de uso:
%?- es_primo(7).
%true.
%?- es_primo(10).
%false.
%?- es_primo(13).
%true.












