% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog elimina duplicados
%              consecutivos.
%              Se incluye una versión en python.
% ===============================================
%def eliminarduplicados(lista):
%    if not lista:  # Verificar si la lista está vacía
%        return []
%    
%    resultado = [lista[0]] 
%    for elemento in lista[1:]:
%        if elemento != resultado[-1]:  # Comparar con el anterior elemento que seria el consecutivo a este
%            resultado.append(elemento)  # Agregar si es diferente
%    return resultado
%
%lista = [1, 2 , 2 , 3 , 4 , 5 , 5 , 6, 7]
%
%print("Lista original: ",lista)
%print("Lista sin duplicados consecutivos: ",eliminarduplicados(lista))
% -------- Código en Prolog --------------------
% Una lista vacía es una lista sin duplicados, ya que no contiene elementos.
eliminar_duplicados_consecutivos([], []).

% Una lista con un solo elemento no tiene duplicados, muy similar al anterior.
eliminar_duplicados_consecutivos([X], [X]).

% Si el primer y segundo elementos son iguales, ignóralos, ya que son solos 2 elementos y ambos se repiten.
eliminar_duplicados_consecutivos([X, X | Cola], Resultado) :-
    eliminar_duplicados_consecutivos([X | Cola], Resultado).

% Si el primer y segundo elementos son diferentes, mantén el primero, y se repite el ciclo recursivamente, siendo el segundo elemento eliminado, y ahora el tercer elemento, es el segundo.
eliminar_duplicados_consecutivos([X, Y | Cola], [X | Resultado]) :-
    X \= Y,  % Verifica que los elementos sean diferentes.
    eliminar_duplicados_consecutivos([Y | Cola], Resultado).

%-------------------------------------
% Ejemplo de uso:
%?- eliminar_duplicados_consecutivos([1, 1, 2, 2, 3, 3, 3, 4, 4, 5], R).
%R = [1, 2, 3, 4, 5].
