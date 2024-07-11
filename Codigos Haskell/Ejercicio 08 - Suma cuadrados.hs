-- Dando n, determine la suma de los cuadrados de la serie 1 - n --

sumaCuadrados n =   if (n < 0)
                        then 0
                    else
                        (n^2) + (sumaCuadrados (n-1))