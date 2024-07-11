%% [a,b,c] => [A, B, C]
%% (x:xs) => [H|T]
%% [] => []

%% Devolver true si un elemento esta en una lista, falso en caso contrario

miembro(X, [X|_]):-!.
miembro(X, [_|T]):-miembro(X,T).

%%Ejercicio para medir la longitud de una lista
largo([],0).
largo([_|T], N):- largo(T, N2), N is N2 + 1.

%%Regresar el enesiomo elemento de una lista
geti([], 1, -100).
geti([V|_], 1, V).
geti([_|T], N, V):- N2 is N-1, geti(T, N2, V).

%%Contar cuantas veces aparece N en una lista
count(_, [], 0).
count(X, [X|T], N):- count(X, T, N2), N is 1 + N2.
count(X, [_|T], N):- count(X, T, N).