%%Comida
entrada(ensalada_cesar, 60).
entrada(ensalada_romana, 60).

platillo(camaron_naranja, 215).
platillo(pozole, 110).
platillo(enchiladas_rojas, 90).
platillo(corte_tbone, 150).

postres(crepa, 30).
postres(flan, 25).
postres(paztel, 30).

bebida(vino_tinto, 150).
bebida(naranjada, 35).
bebida(cerveza, 40).
bebida(refresco, 25).

%% Orden
comidaEconomica(E, P, X, B, Costo, Tope):- entrada(E,Pe), platillo(P, Pp), 
                                postres(X, Px), bebida(B, Pb),
                                Costo is Pe + Pp + Px + Pb,
                                Costo =< Tope.
