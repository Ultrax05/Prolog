% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog sigue la compresión
%              Run-Length de una lista, pero cuando
%              es un elemento, solo lo imprime, no lo cuenta
%              Se incluye una versión en python.
% ===============================================
%def run_length_mod(lista):
%    if not lista:
%        return []
%    
%    resultado = []
%    elemento_actual = lista[0]
%    contador = 1
%    
%    for elemento in lista[1:]:
%        if elemento == elemento_actual:
%            contador += 1
%        else:
%            if contador == 1: #En caso de que sea 1 elemento, lo que hace respetar la función del programa a diferencia del anterior
%                resultado.append(elemento_actual)  
%            else:
%                resultado.append((elemento_actual, contador)) 
%            elemento_actual = elemento
%            contador = 1    
%    # Para el último elemento, en caso de que sea 1
%    if contador == 1:
%        resultado.append(elemento_actual)
%    else:
%        resultado.append((elemento_actual, contador))    
%    return resultado
%
%lista = [1, 1, 1, 3, 4, 4, 5, 6, 6, 6]
%print(run_length_mod(lista))
%
% -------- Código en Prolog --------------------
% El mismo caso vacio de siempre
run_length([], []).

% Si el primer y segundo elemento son iguales, contamos los repetidos
run_length([X | Cola], [Elemento | Resultado]) :-
    contar_repetidos(X, Cola, N, Resto),
    agregar_elemento(X, N, Elemento),
    run_length(Resto, Resultado).

% Funcion auxiliar para contar elementos consecutivos repetidos
contar_repetidos(X, [X | Cola], N, Resto) :-
    contar_repetidos(X, Cola, N1, Resto),
    N is N1 + 1.
contar_repetidos(X, [Y | Cola], 1, [Y | Cola]) :-
    X \= Y.
contar_repetidos(X, [], 1, []).

% Funcion auxiliar que agrega el elemento con su contador si son mas de 1, si es solo 1 elemento, entonces lo imprime solo.
agregar_elemento(X, 1, X).        % Si N = 1, el elemento se imprime sin contar
agregar_elemento(X, N, [X, N]) :-  % Si N > 1, se agrega como [Elemento, N]
    N > 1.
%-------------------------------------
% Ejemplo de uso:
%?- run_length([1, 1, 2, 3, 3, 4], R).
%R = [[1, 2], 2, [3, 2], 4].
%
%?- run_length([x], R).
%R = [x].

