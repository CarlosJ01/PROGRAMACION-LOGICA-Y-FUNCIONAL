-- suma de raíz cuadrada de pares de una serie --
-- Dado n, determine la suma de las raíces cuadradas de los pares en la serie 1..n --

sumaRaizesPares 1 = 0
sumaRaizesPares x = if ((mod x 2) == 0 )
                        then sqrt (fromIntegral x) + (sumaRaizesPares (x-1))
                    else
                        (sumaRaizesPares (x-1))