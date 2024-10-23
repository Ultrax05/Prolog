% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que duplica los
%              elementos de una lista.
%              Se incluye una versión en python.
% ===============================================
%def duplicar_elementos(lista):
%    resultado = []
%    for elemento in lista:
%        resultado.append(elemento * 2)
%    return resultado
%
%# Ejemplo de uso
%lista = [1, 2, 3, 4]
%duplicados = duplicar_elementos(lista)
%print(duplicados)  # Output: [2, 4, 6, 8]
%
% -------- Código en Prolog --------------------
main :-
    duplicar([1, 2, 3], R),
    write('[1, 2, 3]'), write(R), nl.
% Caso en que la lista es vacia.
duplicar([], []).  

% Duplicar el primer elemento y continuar con el resto mediante recursividad, 
duplicar([Cabeza | Cola], [Cabeza, Cabeza | Resultado]) :-
    duplicar(Cola, Resultado).  
%-------------------------------------
% Ejemplo de uso:
%?- duplicar([1, 2, 3], R).
%R = [1, 1, 2, 2, 3, 3].



