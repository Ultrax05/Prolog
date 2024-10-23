% ===============================================
% Autor: Ivan Jared Alvarez De Uña
% Fecha: 21 de octubre de 2024
% Descripción: Programa en Prolog que descomprime
%              el run_length anterior hecho.
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
main :-
    decodificar([(a, 2), (b, 1), (c, 3)], R),
    write('[(a, 2), (b, 1), (c, 3)]'), write(R), nl.
% En caso de que la lista esté vacia.
decodificar([], []).

decodificar([(Elemento, Conteo) | RestoCodificado], Resultado) :-
    repite(Elemento, Conteo, SubLista),  % Repite el elemento la cantidad indicada en la compresion
    decodificar(RestoCodificado, RestoResultado),  % Decodifica el resto de la lista.
    append(SubLista, RestoResultado, Resultado).  % Une las sublistas para formar el resultado final.

repite(_, 0, []).  % Si el conteo es 0, devuelve una lista vacia, para cuando llega el final.

repite(Elemento, Conteo, [Elemento | Resto]) :-
    Conteo > 0,  % Asegurarse de que el conteo sea positivo.
    NuevoConteo is Conteo - 1,  % Disminuye en 1 el conteo cada vez que se repite el proceso.
    repite(Elemento, NuevoConteo, Resto).  % Recurre para construir la lista.

%-------------------------------------
% Ejemplo de uso:
%?- decodificar([(a, 2), (b, 1), (c, 3)], R).
%R = [a, a, b, c, c, c].


