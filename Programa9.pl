% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que agrega los 
%              duplicados a otra lista.
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
    agrupar_duplicados([1, 1, 2, 3, 3, 3, 4], X),
    write('[1, 1, 2, 3, 3, 3, 4]: '), write(X), nl.
% Caso base: una lista vacía da una lista vacía
agrupar_duplicados([], []).

% Si el primer y segundo elemento son iguales, se agrupan en una sublista
agrupar_duplicados([X, X | Cola], [[X | SubLista] | Resultado]) :-
    agrupar_mismos(X, Cola, SubLista, Resto),
    agrupar_duplicados(Resto, Resultado).

% Si el primer y segundo elemento no son iguales, empezamos una nueva sublista
agrupar_duplicados([X | Cola], [[X] | Resultado]) :-
    agrupar_duplicados(Cola, Resultado).

% Función que agrupa todos los elementos iguales consecutivos, en el caso de que haya un elemento duplicado.
agrupar_mismos(X, [X | Cola], [X | SubLista], Resto) :-
    agrupar_mismos(X, Cola, SubLista, Resto).

% Cuando no hay mas elementos consecutivos iguales, retorna la cola restante.
agrupar_mismos(X, [Y | Cola], [], [Y | Cola]) :-
    X \= Y.
agrupar_mismos(_, [], [], []).
%-------------------------------------
% Ejemplo de uso:
%?- agrupar_duplicados([1, 1, 2, 3, 3, 3, 4], Resultado).
%Resultado = [[1, 1], [2], [3, 3, 3], [4]].
