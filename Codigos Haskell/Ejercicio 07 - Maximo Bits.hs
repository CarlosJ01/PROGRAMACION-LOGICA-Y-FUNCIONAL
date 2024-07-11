-- Cual es el maximo decimal con n bits --
-- Resolviendo con una suma de una sucesion de sumas de las potencias de 2
-- 3 = 2^0 + 2^1 + 2`^2 --

maxDecBits n =  if (n == 0)
                    then 0
                else   
                    2^(n-1) + (maxDecBits (n-1))