% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que toma n cantidad
%              de numeros aleatorios de una lista.
%              Se incluye una versión en python.
% ===============================================
%import random
%def extraer_aleatorios(lista, n):
%    # Verificar que n no sea mayor que la longitud de la lista
%    if n > len(lista):
%        print("No se puede extraer más elementos que los disponibles en la lista.")
%        return []
%    
%    numeros_aleatorios = random.sample(lista, n)
%    return numeros_aleatorios
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
%print(extraer_aleatorios(lista, 3))
% -------- Código en Prolog --------------------
:- use_module(library(random)).  % Importa biblioteca de numeros aleatorios.

extraer_aleatorios(N, Lista, Resultado) :-
    length(Lista, Length),      % Obtiene la longitud de la lista original.
    findall(Index, between(1, Length, Index), Indices),  % Genera una lista de indices.
    random_select(Indices, N, RandomIndices),  % Selecciona N indices aleatorios.
    findall(Element, (member(Index, RandomIndices), nth1(Index, Lista, Element)), Resultado).
%-------------------------------------
% Ejemplo de uso:
%?- extraer_aleatorios(3, [a, b, c, d, e, f], R).
%R = [c, a, e].