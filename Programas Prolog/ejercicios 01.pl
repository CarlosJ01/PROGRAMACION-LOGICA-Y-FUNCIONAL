%% Suma de gauss
%% gauss 0 = 0
%% gauss n = n + gauss(n-1)

gauss(0,0).
gauss(N,R):- N2 is N-1, gauss(N2,R2), R is N + R2.

%% Potencia
%% potencia b 0 = 1
%% potencia b e = b * (potencia b (e-1))

potencia(_,0,1):-!.
potencia(B,E,R):-E2 is E - 1, potencia(B,E2,R2), R is B * R2.