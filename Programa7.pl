% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que aplana una lista.
%              Se incluye una versión en python.
% ===============================================
% -------- Código en python ------------
%def aplanar(lista):
%    resultado = []
%    for elemento in lista:
%        if isinstance(elemento, list):
%            resultado.extend(aplanar(elemento))  # Llamada recursiva
%        else:
%            resultado.append(elemento)
%    return resultado
%
%lista = [1, [2, 3], [4, [5, 6]]]
%
%print("Lista original: ",lista)
%print("Lista aplanada: ",aplanar(lista))
% -------- Código en Prolog --------------------
main :-
    aplanar([1, [2, 3], [4, [5, 6]], 7], X),
    write('[1, [2, 3], [4, [5, 6]], 7]: '), write(X), nl.
% Una lista vacía no necesita aplanarse, ya que es igual a una lista vacia.
aplanar([], []).

% Cuando un elemento no es una lista, se agrega directamente a la lista resultante.
aplanar(Elemento, [Elemento]) :- 
    \+ is_list(Elemento).

% Si el primer elemento es una lista, aplana esa lista elemento por elemento, lo pasa a la lista resultante, lo que permite borrar la lista que terminó de analizar, y pasa al siguiente pero con el elemento analizado borrado. Sigue mucho los ejemplos anteriores.
aplanar([Cabeza|Cola], ListaAplanada) :-
    aplanar(Cabeza, ListaAplanadaCabeza), % Aplana la cabeza.
    aplanar(Cola, ListaAplanadaCola),      % Aplana la cola.
    append(ListaAplanadaCabeza, ListaAplanadaCola, ListaAplanada).

% Si la cabeza no es una lista, se procesa normalmente.
aplanar([Cabeza|Cola], [Cabeza|ListaAplanada]) :-
    \+ is_list(Cabeza),
    aplanar(Cola, ListaAplanada).

%-------------------------------------
% Ejemplo de uso:
%?- aplanar([1, [2, 3], [4, [5, 6]], 7], X).
%X = [1, 2, 3, 4, 5, 6, 7].
