% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog sigue la compresión
%              Run-Length de una lista.
%              Se incluye una versión en python.
% ===============================================
%def agrupar_duplicados(lista):
%    resultado = []
%    sublista_actual = [lista[0]]
%    
%    for elemento in lista[1:]:
%        if elemento == sublista_actual[-1]:  
%            sublista_actual.append(elemento) 
%        else:
%            resultado.append(sublista_actual)
%            sublista_actual = [elemento] 
%    
%    resultado.append(sublista_actual)  
%    return resultado
%
%lista = [1 , 1 , 2 , 2 , 3 , 3 , 3 , 4 , 4 , 1 , 1]
%print(agrupar_duplicados(lista))  
% -------- Código en Prolog --------------------
main :-
    run_length([a, a, b, b, c, c, c, c, a, a, a], T),
    write("[a, a, b, b, c, c, c, c, a, a, a]: "), write(T), nl.
% Una lista vacía no necesita comprimirse.
run_length([], []).

% Si el primer y segundo elemento son iguales, contamos los repetidos
run_length([X | Cola], [[X, N] | Resultado]) :-
    contar_repetidos(X, Cola, N, Resto),
    run_length(Resto, Resultado).

% Funcion para contar elementos consecutivos repetidos, sino es igual se para el contador. 
contar_repetidos(X, [X | Cola], N, Resto) :-
    contar_repetidos(X, Cola, N1, Resto),
    N is N1 + 1.
contar_repetidos(X, [Y | Cola], 1, [Y | Cola]) :-
    X \= Y.
contar_repetidos(X, [], 1, []).


%-------------------------------------
% Ejemplo de uso:
%?- run_length([a, a, b, b, c, c, c, c, a, a, a], Resultado).
%Resultado = [[a, 3], [b, 2], [c, 4], [a, 3]].
