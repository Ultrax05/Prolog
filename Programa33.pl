% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa que calcula la función 
%              totiente de Euler
%              Se incluye una versión en python.
% ===============================================
%def phi(m):
%    resultado = m
%    p = 2
%    while p * p <= m:
%        if m % p == 0:
%            while m % p == 0:
%                m //= p
%            # Aplicar la fórmula de Euler
%            resultado -= resultado // p
%        p += 1
%    # Si m aún es mayor que 1, entonces es un número primo
%    if m > 1:
%        resultado -= resultado // m
%    return resultado
%
%# Ejemplo de uso
%numero = 36
%print("El valor de la función totiente de Euler φ(",numero,") es: ",phi(numero))
% -------- Código en Prolog --------------------
phi(M, Phi) :-
    findall(X, (between(1, M, X), coprimos(M, X)), ListaCoprimos),
    length(ListaCoprimos, Phi).

% Determina si dos numeros son coprimos.
coprimos(A, B) :-
    gcd(A, B, 1). % Si el máximo comun divisor es 1, entonces son coprimos.

% Calcula el maximo comun divisor de A y B.
gcd(A, 0, A) :- !.  % Si B es 0, el gcd es A.
gcd(A, B, GCD) :-
    R is A mod B,
    gcd(B, R, GCD).

%-------------------------------------
% Ejemplo de uso:
%?- phi(9, Phi).
%Phi = 6.
%?- phi(10, Phi).
%Phi = 4.