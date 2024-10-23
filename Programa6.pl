% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que revisa si
%	       los elementos en la lista son un palindromo.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
%# Solo retorna la lista al reveces, con una función de python
%def tam(lista):
%    if (lista==list(reversed(lista))):
%        return "Lista es una palindromo"
%    else:
%        return "Lista no es una palindromo"
%
%# Ejemplo de uso:
%lista = [4, 3, 3, 4]
%print(tam(lista)) 
%lista = [1, 2, 3, 4]
%print(tam(lista)) 
% -------- Código en Prolog --------------------
main :-
    write('[1, 2, 3, 4]: '), es_palindromo([1, 2, 3, 4]), nl.
es_palindromo(Lista) :-
    reverse(Lista, Lista).  % La lista es un palíndromo si es igual a su reverso, usando la función reverse, se le da la misma lista y arroja si es igual o no al reverso.
%-------------------------------------
%?- es_palindromo([a, b, c, b, a]).
%true.
%
%?- es_palindromo([1, 2, 3, 2, 1]).
%true.
%
%?- es_palindromo([a, b, c]).
%false.
